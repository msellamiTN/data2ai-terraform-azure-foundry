from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[2]
SITE = ROOT / "_site_source" / "Instructions" / "Exercises"
pages = [p for p in sorted(SITE.glob("*.md")) if p.name != "index.md"] if SITE.exists() else []
if not pages:
    print("ERROR: no generated exercise pages found")
    sys.exit(1)

required = [
    "layout: default","Learning loop:","## Exercise workflow",
    "**LEARN**","**BUILD**","**VALIDATE**","**BREAK**","**FIX**",
    "**CHALLENGE**","**SOLUTION**","**CLEANUP**","Source:"
]
failed = 0
incomplete = 0
for page in pages:
    text = page.read_text(encoding="utf-8")
    missing = [x for x in required if x not in text]
    if missing:
        print(f"FAIL: {page}: missing {', '.join(missing)}")
        failed += 1
        continue
    m = re.search(r"Lab maturity:\s*([0-9]+)/([0-9]+)", text)
    if m and m.group(1) != m.group(2):
        incomplete += 1
    print(f"PASS: {page}")
print(f"Generated exercise pages: {len(pages)}")
print(f"Pages with incomplete learning-loop stages: {incomplete}")
if failed:
    sys.exit(1)
print("RESULT: PASS")
