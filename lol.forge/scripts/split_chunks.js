#!/usr/bin/env node
/**
 * split_chunks.js - Split markdown by logical headers (## or #)
 * Replaces the Python write_large_file.py split function
 */

const fs = require('fs');
const path = require('path');

function splitLogicalChunks(inputPath, outputDir, chunkPrefix = "chapter", ext = ".md") {
    const content = fs.readFileSync(inputPath, 'utf-8');
    const lines = content.split('\n');

    const chunks = [];
    let currentChunk = [];
    let currentTitle = "intro";
    let chunkNum = 0;

    for (const line of lines) {
        if (line.startsWith('## ') || (line.startsWith('# ') && chunkNum > 0)) {
            if (currentChunk.length > 0) {
                chunkNum++;
                const safeTitle = currentTitle.toLowerCase()
                    .replace(/ /g, '_')
                    .replace(/\//g, '_')
                    .replace(/:/g, '')
                    .replace(/\(/g, '')
                    .replace(/\)/g, '')
                    .replace(/\./g, '')
                    .replace(/,/g, '')
                    .replace(/&/g, '')
                    .replace(/–/g, '')
                    .replace(/—/g, '')
                    .replace(/⁻/g, '')
                    .replace(/ₑ/g, 'e')
                    .replace(/ₑ/g, 'e')
                    .substring(0, 30);
                const filename = `${chunkPrefix}_${chunkNum.toString().padStart(2, '0')}_${safeTitle}${ext}`;
                fs.writeFileSync(path.join(outputDir, filename), currentChunk.join('\n'), 'utf-8');
                chunks.push(filename);
                console.log(`  ✓ Chapter ${chunkNum}: ${currentTitle} -> ${filename} (${currentChunk.length} lines)`);
            }
            currentTitle = line.replace(/^#+\s*/, '').trim();
            currentChunk = [line];
        } else {
            currentChunk.push(line);
        }
    }

    if (currentChunk.length > 0) {
        chunkNum++;
        const safeTitle = currentTitle.toLowerCase()
            .replace(/ /g, '_')
            .replace(/\//g, '_')
            .replace(/:/g, '')
            .replace(/\(/g, '')
            .replace(/\)/g, '')
            .replace(/\./g, '')
            .replace(/,/g, '')
            .replace(/&/g, '')
            .replace(/–/g, '')
            .replace(/—/g, '')
            .replace(/⁻/g, '')
            .replace(/ₑ/g, 'e')
            .replace(/ₑ/g, 'e')
            .substring(0, 30);
        const filename = `${chunkPrefix}_${chunkNum.toString().padStart(2, '0')}_${safeTitle}${ext}`;
        fs.writeFileSync(path.join(outputDir, filename), currentChunk.join('\n'), 'utf-8');
        chunks.push(filename);
        console.log(`  ✓ Chapter ${chunkNum}: ${currentTitle} -> ${filename} (${currentChunk.length} lines)`);
    }

    console.log(`Split into ${chunks.length} chunks in ${outputDir}`);
    return chunks;
}

function generateManifest(chunkDir, manifestPath, pattern = "*") {
    const crypto = require('crypto');
    const files = fs.readdirSync(chunkDir).filter(f => {
        const fullPath = path.join(chunkDir, f);
        return fs.statSync(fullPath).isFile() && (pattern === "*" || f.match(pattern));
    });

    const manifest = {};
    for (const f of files) {
        const fullPath = path.join(chunkDir, f);
        const content = fs.readFileSync(fullPath);
        const sha256 = crypto.createHash('sha256').update(content).digest('hex');
        manifest[f] = {
            size: content.length,
            sha256: sha256
        };
    }

    fs.writeFileSync(manifestPath, JSON.stringify(manifest, null, 2));
    console.log(`Manifest written to ${manifestPath} (${Object.keys(manifest).length} files)`);
    return manifest;
}

function verifyManifest(chunkDir, manifestPath) {
    const crypto = require('crypto');
    const manifest = JSON.parse(fs.readFileSync(manifestPath, 'utf-8'));

    for (const [name, info] of Object.entries(manifest)) {
        const fullPath = path.join(chunkDir, name);
        if (!fs.existsSync(fullPath)) {
            console.log(`MISSING: ${name}`);
            return false;
        }
        const content = fs.readFileSync(fullPath);
        const sha256 = crypto.createHash('sha256').update(content).digest('hex');
        if (sha256 !== info.sha256) {
            console.log(`CORRUPTED: ${name} (checksum mismatch)`);
            return false;
        }
    }
    console.log(`Verified ${Object.keys(manifest).length} files OK`);
    return true;
}

function compressFile(inputPath, outputPath) {
    const zlib = require('zlib');
    const input = fs.readFileSync(inputPath);
    const compressed = zlib.gzipSync(input);
    fs.writeFileSync(outputPath, compressed);
    console.log(`Compressed ${inputPath} -> ${outputPath} (${compressed.length} bytes)`);
}

// CLI
const args = process.argv.slice(2);
const cmd = args[0];

if (cmd === 'split') {
    const inputPath = args[1];
    const outputDir = args[2];
    const prefix = args[3] || 'chapter';
    const ext = args[4] || '.md';
    if (!fs.existsSync(outputDir)) fs.mkdirSync(outputDir, { recursive: true });
    splitLogicalChunks(inputPath, outputDir, prefix, ext);
} else if (cmd === 'manifest') {
    const chunkDir = args[1];
    const manifestPath = args[2] || path.join(chunkDir, 'MANIFEST.json');
    generateManifest(chunkDir, manifestPath);
} else if (cmd === 'verify') {
    const chunkDir = args[1];
    const manifestPath = args[2] || path.join(chunkDir, 'MANIFEST.json');
    verifyManifest(chunkDir, manifestPath);
} else if (cmd === 'compress') {
    const inputPath = args[1];
    const outputPath = args[2] || inputPath + '.gz';
    compressFile(inputPath, outputPath);
} else {
    console.log("Usage:");
    console.log("  node split_chunks.js split <input> <output_dir> [prefix] [ext]");
    console.log("  node split_chunks.js manifest <chunk_dir> [manifest_path]");
    console.log("  node split_chunks.js verify <chunk_dir> [manifest_path]");
    console.log("  node split_chunks.js compress <input> [output]");
    process.exit(1);
}