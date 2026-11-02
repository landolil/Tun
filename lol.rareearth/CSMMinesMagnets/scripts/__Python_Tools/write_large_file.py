#!/usr/bin/env python3
"""
Large File Handling Utilities — Incremental Chapter Generator
Replaces the 13-piece fragmentation approach
Supports: streaming write, chapter-by-chapter generation, manifest verification
"""

import os
import sys
import hashlib
import json
import gzip
import shutil
from pathlib import Path
from typing import Generator, Optional, Callable, List, Dict, Any


def write_large_file(input_path, output_path, chunk_size=1024*1024):
    """Write large file in chunks to avoid memory issues"""
    input_path = Path(input_path)
    output_path = Path(output_path)
    output_path.parent.mkdir(parents=True, exist_ok=True)

    with open(input_path, 'rb') as src, open(output_path, 'wb') as dst:
        while True:
            chunk = src.read(chunk_size)
            if not chunk:
                break
            dst.write(chunk)
    print(f"Wrote {output_path} ({output_path.stat().st_size} bytes)")


def compress_file(input_path, output_path=None, keep_original=False):
    """Compress file with gzip"""
    input_path = Path(input_path)
    if output_path is None:
        output_path = input_path.with_suffix(input_path.suffix + '.gz')
    else:
        output_path = Path(output_path)

    with open(input_path, 'rb') as f_in:
        with gzip.open(output_path, 'wb') as f_out:
            shutil.copyfileobj(f_in, f_out)

    if not keep_original:
        input_path.unlink()
    print(f"Compressed {input_path} -> {output_path} ({output_path.stat().st_size} bytes)")
    return output_path


def decompress_file(input_path, output_path=None):
    """Decompress gzip file"""
    input_path = Path(input_path)
    if output_path is None:
        output_path = input_path.with_suffix('')
    else:
        output_path = Path(output_path)

    with gzip.open(input_path, 'rb') as f_in:
        with open(output_path, 'wb') as f_out:
            shutil.copyfileobj(f_in, f_out)
    print(f"Decompressed {input_path} -> {output_path}")
    return output_path


class IncrementalDocumentWriter:
    """
    Write documents chapter-by-chapter without holding full content in memory.
    Usage:
        writer = IncrementalDocumentWriter("FinishedWork/DOC-01.md", "chunks/DOC-01")
        writer.write_chapter("01", "Geological Overview", chapter_generator_func)
        writer.write_chapter("02", "Magnetic Mineral Occurrences", chapter_generator_func)
        writer.finalize()
    """

    def __init__(self, output_path: str, chunk_dir: str, chunk_prefix: str = "chapter", ext: str = ".md"):
        self.output_path = Path(output_path)
        self.chunk_dir = Path(chunk_dir)
        self.chunk_prefix = chunk_prefix
        self.ext = ext
        self.chunk_dir.mkdir(parents=True, exist_ok=True)
        self.output_path.parent.mkdir(parents=True, exist_ok=True)
        self.chapters_written = 0
        self.manifest = {}
        self._full_handle = open(self.output_path, 'w', encoding='utf-8')

    def write_chapter(self, chapter_num: str, title: str, content_generator: Callable[[], Generator[str, None, None]]):
        """
        Write a single chapter incrementally.
        content_generator: function that yields lines (strings) for this chapter
        """
        self.chapters_written += 1
        safe_title = title.lower().replace(' ', '_').replace('/', '_').replace(':', '').replace('(', '').replace(')', '').replace('.', '').replace(',', '').replace('&', '').replace('–', '').replace('—', '').replace('⁻', '').replace('ₑ', 'e').replace('ₑ', 'e')[:30]
        chunk_filename = f"{self.chunk_prefix}_{int(chapter_num):02d}_{safe_title}{self.ext}"
        chunk_path = self.chunk_dir / chunk_filename

        # Write to chunk file
        chunk_handle = open(chunk_path, 'w', encoding='utf-8')
        chunk_lines = []

        # Write chapter header
        header = f"## {title}\n"
        chunk_handle.write(header)
        self._full_handle.write(header)
        chunk_lines.append(header)

        # Stream content from generator
        for line in content_generator():
            chunk_handle.write(line + '\n')
            self._full_handle.write(line + '\n')
            chunk_lines.append(line)

        chunk_handle.close()

        # Record manifest entry
        sha256 = hashlib.sha256('\n'.join(chunk_lines).encode('utf-8')).hexdigest()
        self.manifest[chunk_filename] = {
            "size": chunk_path.stat().st_size,
            "sha256": sha256,
            "chapter": chapter_num,
            "title": title
        }

        print(f"  ✓ Chapter {chapter_num}: {title} -> {chunk_filename} ({len(chunk_lines)} lines)")

    def write_raw_chapter(self, chapter_num: str, title: str, lines: List[str]):
        """Write a chapter from a pre-built list of lines"""
        def gen():
            for line in lines:
                yield line
        self.write_chapter(chapter_num, title, gen)

    def finalize(self, manifest_path: Optional[str] = None):
        """Close main file and write manifest"""
        self._full_handle.close()
        if manifest_path is None:
            manifest_path = self.chunk_dir / "MANIFEST.json"
        else:
            manifest_path = Path(manifest_path)
        manifest_path.write_text(json.dumps(self.manifest, indent=2))
        print(f"Document complete: {self.chapters_written} chapters -> {self.output_path}")
        print(f"Manifest: {manifest_path} ({len(self.manifest)} entries)")
        return self.manifest

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        if not self._full_handle.closed:
            self.finalize()


def split_logical_chunks(input_path, output_dir, chunk_prefix="chapter", ext=".md"):
    """Split markdown by logical headers (## or #) — legacy function"""
    input_path = Path(input_path)
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    content = input_path.read_text(encoding='utf-8')
    lines = content.split('\n')

    chunks = []
    current_chunk = []
    current_title = "intro"
    chunk_num = 0

    for line in lines:
        if line.startswith('## ') or (line.startswith('# ') and chunk_num > 0):
            if current_chunk:
                chunk_num += 1
                safe_title = current_title.lower().replace(' ', '_').replace('/', '_').replace(':', '').replace('(', '').replace(')', '').replace('.', '').replace(',', '').replace('&', '').replace('–', '').replace('—', '').replace('⁻', '').replace('ₑ', 'e').replace('ₑ', 'e')[:30]
                filename = f"{chunk_prefix}_{chunk_num:02d}_{safe_title}{ext}"
                (output_dir / filename).write_text('\n'.join(current_chunk), encoding='utf-8')
                chunks.append(filename)
            current_title = line.lstrip('# ').strip()
            current_chunk = [line]
        else:
            current_chunk.append(line)

    if current_chunk:
        chunk_num += 1
        safe_title = current_title.lower().replace(' ', '_').replace('/', '_').replace(':', '').replace('(', '').replace(')', '').replace('.', '').replace(',', '').replace('&', '').replace('–', '').replace('—', '').replace('⁻', '').replace('ₑ', 'e').replace('ₑ', 'e')[:30]
        filename = f"{chunk_prefix}_{chunk_num:02d}_{safe_title}{ext}"
        (output_dir / filename).write_text('\n'.join(current_chunk), encoding='utf-8')
        chunks.append(filename)

    print(f"Split into {len(chunks)} chunks in {output_dir}")
    return chunks


def concat_chunks(chunk_dir, output_path, pattern="chapter_*.md"):
    """Concatenate chunk files in order"""
    chunk_dir = Path(chunk_dir)
    output_path = Path(output_path)
    chunks = sorted(chunk_dir.glob(pattern))

    with open(output_path, 'w', encoding='utf-8') as out:
        for chunk in chunks:
            out.write(chunk.read_text(encoding='utf-8'))
            out.write('\n\n')
    print(f"Concatenated {len(chunks)} chunks -> {output_path}")


def generate_manifest(chunk_dir, manifest_path=None, pattern="*"):
    """Generate manifest with checksums"""
    chunk_dir = Path(chunk_dir)
    if manifest_path is None:
        manifest_path = chunk_dir / "MANIFEST.json"
    else:
        manifest_path = Path(manifest_path)
    manifest = {}

    for f in chunk_dir.glob(pattern):
        if f.is_file():
            sha256 = hashlib.sha256(f.read_bytes()).hexdigest()
            manifest[f.name] = {
                "size": f.stat().st_size,
                "sha256": sha256
            }

    manifest_path.write_text(json.dumps(manifest, indent=2))
    print(f"Manifest written to {manifest_path} ({len(manifest)} files)")
    return manifest


def verify_manifest(chunk_dir, manifest_path=None):
    """Verify files against manifest"""
    chunk_dir = Path(chunk_dir)
    if manifest_path is None:
        manifest_path = chunk_dir / "MANIFEST.json"
    else:
        manifest_path = Path(manifest_path)

    manifest = json.loads(manifest_path.read_text())

    for name, info in manifest.items():
        f = chunk_dir / name
        if not f.exists():
            print(f"MISSING: {name}")
            return False
        sha256 = hashlib.sha256(f.read_bytes()).hexdigest()
        if sha256 != info["sha256"]:
            print(f"CORRUPTED: {name} (checksum mismatch)")
            return False
    print(f"Verified {len(manifest)} files OK")
    return True


def main():
    if len(sys.argv) < 2:
        print("Usage:")
        print("  write_large_file.py write <input> <output> [chunk_size]")
        print("  write_large_file.py compress <input> [output]")
        print("  write_large_file.py decompress <input> [output]")
        print("  write_large_file.py split <input> <output_dir> [prefix] [ext]")
        print("  write_large_file.py concat <chunk_dir> <output> [pattern]")
        print("  write_large_file.py manifest <chunk_dir> [manifest_path] [pattern]")
        print("  write_large_file.py verify <chunk_dir> [manifest_path]")
        print("  write_large_file.py incremental <output> <chunk_dir>  # Interactive chapter writer")
        sys.exit(1)

    cmd = sys.argv[1]

    if cmd == "write":
        write_large_file(sys.argv[2], sys.argv[3], int(sys.argv[4]) if len(sys.argv) > 4 else 1024*1024)
    elif cmd == "compress":
        compress_file(sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else None)
    elif cmd == "decompress":
        decompress_file(sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else None)
    elif cmd == "split":
        split_logical_chunks(sys.argv[2], sys.argv[3], sys.argv[4] if len(sys.argv) > 4 else "chapter", sys.argv[5] if len(sys.argv) > 5 else ".md")
    elif cmd == "concat":
        concat_chunks(sys.argv[2], sys.argv[3], sys.argv[4] if len(sys.argv) > 4 else "chapter_*.md")
    elif cmd == "manifest":
        generate_manifest(sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else None, sys.argv[4] if len(sys.argv) > 4 else "*")
    elif cmd == "verify":
        verify_manifest(sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else None)
    elif cmd == "incremental":
        # Demo: create incremental writer
        writer = IncrementalDocumentWriter(sys.argv[2], sys.argv[3])
        print("IncrementalDocumentWriter ready. Use writer.write_chapter() then writer.finalize()")
        # This is a library mode - actual usage is via import
    else:
        print(f"Unknown command: {cmd}")
        sys.exit(1)


if __name__ == "__main__":
    main()