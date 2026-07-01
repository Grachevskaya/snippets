from pathlib import Path

for p in sorted(Path.cwd().rglob("*.md")):
    print(p, p.stat().st_size)
