#!/usr/bin/env python3
"""
Shared No-Gradle Android APK Build System
Used by: CSMWip/05_BOUNCE, CSMWip/11_TGApp/TGE_E5
"""

import os
import sys
import argparse
import subprocess
import shutil
from pathlib import Path

# Default tool locations
DEFAULT_ANDROID_SDK = os.environ.get("ANDROID_SDK", "/opt/android-sdk")
DEFAULT_API_LEVEL = "34"
DEFAULT_BUILD_TOOLS_VERSION = "34.0.0"


def find_android_sdk():
    """Try to locate Android SDK"""
    candidates = [
        os.environ.get("ANDROID_SDK"),
        "/opt/android-sdk",
        "/usr/lib/android-sdk",
        os.path.expanduser("~/Android/Sdk"),
        os.path.expanduser("~/Library/Android/sdk"),
    ]
    for c in candidates:
        if c and Path(c).exists():
            return c
    return DEFAULT_ANDROID_SDK


class APKBuilder:
    def __init__(self, project_dir, package_name, output_name, api_level=DEFAULT_API_LEVEL,
                 build_tools_version=DEFAULT_BUILD_TOOLS_VERSION, android_sdk=None):
        self.project_dir = Path(project_dir).resolve()
        self.package_name = package_name
        self.output_name = output_name
        self.api_level = api_level
        self.build_tools_version = build_tools_version

        self.android_sdk = Path(android_sdk or find_android_sdk())
        self.build_tools = self.android_sdk / "build-tools" / build_tools_version
        self.platform = self.android_sdk / "platforms" / f"android-{api_level}"

        self.android_jar = self.platform / "android.jar"
        self.aapt2 = self.build_tools / "aapt2"
        self.d8 = self.build_tools / "d8"
        self.zipalign = self.build_tools / "zipalign"
        self.apksigner = self.build_tools / "apksigner"

        self.build_dir = self.project_dir / "build"
        self.src_dir = self.project_dir / "src"
        self.res_dir = self.project_dir / "res"
        self.manifest = self.project_dir / "AndroidManifest.xml"
        self.keystore = self.project_dir / "debug.keystore"

        self.output_apk = self.project_dir / output_name

        # Keystore credentials must come from the environment; never commit them.
        self.keystore_pass = os.environ.get("ANDROID_KEYSTORE_PASS")
        self.key_pass = os.environ.get("ANDROID_KEY_PASS", self.keystore_pass)
        self.key_alias = os.environ.get("ANDROID_KEY_ALIAS", "androiddebugkey")
        if not self.keystore_pass:
            raise SystemExit("ERROR: ANDROID_KEYSTORE_PASS is required for signing; set it in the environment.")
        os.environ.setdefault("ANDROID_KEY_PASS", self.key_pass)

    def check_tools(self):
        missing = []
        for tool, path in [
            ("aapt2", self.aapt2),
            ("d8", self.d8),
            ("zipalign", self.zipalign),
            ("apksigner", self.apksigner),
            ("android.jar", self.android_jar),
        ]:
            if not path.exists():
                missing.append(f"{tool} at {path}")
        if missing:
            print("ERROR: Missing Android SDK tools:")
            for m in missing:
                print(f"  - {m}")
            print(f"\nSet ANDROID_SDK or install: sdkmanager \"build-tools;{self.build_tools_version}\" \"platforms;android-{self.api_level}\"")
            return False
        return True

    def run(self, cmd, check=True):
        print(f"$ {' '.join(cmd)}")
        result = subprocess.run(cmd, cwd=self.project_dir, capture_output=True, text=True)
        if result.stdout:
            print(result.stdout)
        if result.stderr:
            print(result.stderr, file=sys.stderr)
        if check and result.returncode != 0:
            sys.exit(result.returncode)
        return result

    def ensure_keystore(self):
        if not self.keystore.exists():
            print("Generating debug.keystore...")
            self.run([
                "keytool", "-genkey", "-v",
                "-keystore", str(self.keystore),
                "-alias", self.key_alias,
                "-keyalg", "RSA", "-keysize", "2048",
                "-validity", "10000",
                "-storepass", self.keystore_pass,
                "-keypass", self.key_pass,
                "-dname", "CN=Android Debug,O=Android,C=US"
            ])

    def clean(self):
        if self.build_dir.exists():
            shutil.rmtree(self.build_dir)
        for apk in self.project_dir.glob("*.apk"):
            apk.unlink()
        print("Cleaned build artifacts")

    def build(self):
        if not self.check_tools():
            sys.exit(1)

        self.ensure_keystore()
        self.build_dir.mkdir(parents=True, exist_ok=True)

        # 1. Compile resources
        print("=== Compiling Resources ===")
        res_zip = self.build_dir / "res.zip"
        self.run([str(self.aapt2), "compile", "--dir", str(self.res_dir), "-o", str(res_zip)])

        gen_dir = self.build_dir / "generated"
        gen_dir.mkdir(parents=True, exist_ok=True)
        self.run([
            str(self.aapt2), "link",
            "-o", str(self.build_dir / "base.apk"),
            "-I", str(self.android_jar),
            str(res_zip),
            "--manifest", str(self.manifest),
            "--java", str(gen_dir)
        ])

        # 2. Compile Java
        print("=== Compiling Java ===")
        classes_dir = self.build_dir / "classes"
        classes_dir.mkdir(parents=True, exist_ok=True)

        java_files = list(self.src_dir.rglob("*.java"))
        gen_java = list(gen_dir.rglob("*.java"))
        all_java = java_files + gen_java

        if all_java:
            self.run([
                "javac",
                "-source", "1.8", "-target", "1.8",
                "-bootclasspath", str(self.android_jar),
                "-d", str(classes_dir),
                *[str(f) for f in all_java]
            ])

        # 3. Dex
        print("=== Dexing ===")
        dex_dir = self.build_dir / "dex"
        dex_dir.mkdir(parents=True, exist_ok=True)

        class_files = list(classes_dir.rglob("*.class"))
        if class_files:
            self.run([
                str(self.d8),
                "--output", str(dex_dir),
                "--lib", str(self.android_jar),
                *[str(f) for f in class_files]
            ])

        # 4. Package APK
        print("=== Packaging APK ===")
        unaligned = self.project_dir / f"{self.output_name}.unaligned.apk"
        self.run([
            str(self.aapt2), "link",
            "-o", str(unaligned),
            "-I", str(self.android_jar),
            str(res_zip),
            "--manifest", str(self.manifest)
        ])

        dex_file = dex_dir / "classes.dex"
        if dex_file.exists():
            import zipfile
            with zipfile.ZipFile(unaligned, 'a') as z:
                z.write(dex_file, "classes.dex")

        # 5. Align & Sign
        print("=== Aligning & Signing ===")
        aligned = self.project_dir / f"{self.output_name}.aligned.apk"
        self.run([str(self.zipalign), "-f", "4", str(unaligned), str(aligned)])
        self.run([
            str(self.apksigner), "sign",
            "--ks", str(self.keystore),
            "--ks-pass", "env:ANDROID_KEYSTORE_PASS",
            "--key-pass", "env:ANDROID_KEY_PASS",
            str(aligned)
        ])

        shutil.move(str(aligned), str(self.output_apk))
        unaligned.unlink(missing_ok=True)
        print(f"✓ Built {self.output_apk}")

    def install(self):
        self.build()
        self.run(["adb", "install", "-r", str(self.output_apk)])


def main():
    parser = argparse.ArgumentParser(description="No-Gradle APK Builder")
    parser.add_argument("--project", required=True, help="Project directory")
    parser.add_argument("--package", required=True, help="Java package name (e.g. com.example.app)")
    parser.add_argument("--output", default="app.apk", help="Output APK filename")
    parser.add_argument("--api", default=DEFAULT_API_LEVEL, help="Target API level")
    parser.add_argument("--build-tools", default=DEFAULT_BUILD_TOOLS_VERSION, help="Build tools version")
    parser.add_argument("--sdk", help="Android SDK path")
    parser.add_argument("--clean", action="store_true", help="Clean only")
    parser.add_argument("--install", action="store_true", help="Build and install via adb")

    args = parser.parse_args()

    builder = APKBuilder(
        project_dir=args.project,
        package_name=args.package,
        output_name=args.output.replace(".apk", ""),
        api_level=args.api,
        build_tools_version=args.build_tools,
        android_sdk=args.sdk
    )

    if args.clean:
        builder.clean()
    elif args.install:
        builder.install()
    else:
        builder.build()


if __name__ == "__main__":
    main()