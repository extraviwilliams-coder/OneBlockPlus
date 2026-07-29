#!/usr/bin/env python3
import pathlib
import re
import sys

PATTERNS = [
    re.compile(r"Gamerz_Riot", re.I),
    re.compile(r"IJAMinecraft", re.I),
    re.compile(r"ijaminecraft\.com", re.I),
    re.compile(r"youtube\.com/@?[A-Za-z0-9_]*", re.I),
    re.compile(r"curseforge\.com/minecraft/worlds/oneblock-reborn/?", re.I),
]

def scrub(path: pathlib.Path) -> None:
    if path.name == "LICENSE.txt":
        return
    try:
        text = path.read_text(encoding="utf-8")
    except UnicodeDecodeError:
        return
    original = text
    for pattern in PATTERNS:
        text = pattern.sub("OneBlock Plus", text)
    if path.name == "README.txt":
        text = "OneBlock Plus\n=============\n\nBundled OneBlock progression for the OneBlock Plus Forge mod.\n"
    if text != original:
        path.write_text(text, encoding="utf-8")

root = pathlib.Path(sys.argv[1]) if len(sys.argv) > 1 else pathlib.Path(".")
for path in root.rglob("*"):
    if path.is_file() and path.suffix.lower() in {".mcfunction", ".json", ".txt", ".mcmeta"}:
        scrub(path)
