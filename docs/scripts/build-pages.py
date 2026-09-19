from pathlib import Path
import re, shutil

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "_site_source"
EXERCISES = OUT / "Instructions" / "Exercises"

if OUT.exists():
    shutil.rmtree(OUT)
EXERCISES.mkdir(parents=True)

shutil.copy2(ROOT / "_config.yml", OUT / "_config.yml")
shutil.copytree(ROOT / "_layouts", OUT / "_layouts")

for readme in sorted(ROOT.glob("**/lab-*/README.md")):
    rel = readme.relative_to(ROOT)
    if any(part.startswith(".") for part in rel.parts):
        continue
    lab = rel.parent.name
    text = readme.read_text(encoding="utf-8")
    match = re.search(r"^#\s+(.+)$", text, re.M)
    title = match.group(1).strip() if match else lab
    safe_title = title.replace('"', '\\\"')
    body = re.sub(r"^#\s+.+$\n?", "", text, count=1, flags=re.M).lstrip()
    page = "---\nlayout: default\ntitle: \"" + safe_title + "\"\n---\n\n# " + title + "\n\n> **Lab:** `" + lab + "`  \n> **Source:** `" + str(rel) + "`\n\n" + body
    (EXERCISES / (lab + ".md")).write_text(page, encoding="utf-8")

shutil.copy2(ROOT / "docs/index.md", OUT / "index.md")
