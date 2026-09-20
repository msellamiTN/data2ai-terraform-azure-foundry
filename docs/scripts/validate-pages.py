from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[2]
SITE = ROOT / "_site_source" / "Instructions" / "Exercises"

pages = sorted(SITE.glob("*.md")) if SITE.exists() else []
pages = [p for p in pages if p.name != "index.md"]
if not pages:
    print("ERROR: no generated exercise pages found")
    sys.exit(1)

failed = 0
incomplete = 0
for page in pages:
    text = page.read_text(encoding="utf-8")
    required = [
        "layout: default", "Learning loop:", "## Exercise workflow",
        "**LEARN**", "**BUILD**", "**VALIDATE**", "**BREAK**",
        "**FIX**", "**CHALLENGE**", "**SOLUTION**", "**CLEANUP**", "Source:",
    ]
    missing = [x for x in required if x not in text]
    if missing:
        print(f"FAIL: {page}: missing {', '.join(missing)}")
        failed += 1
        continue
    match = re.search(r"Lab maturity:\s*([0-9]+)/([0-9]+)", text)
    if match and match.group(1) != match.group(2):
        incomplete += 1
    print(f"PASS: {page}")

print(f"Generated exercise pages: {len(pages)}")
print(f"Pages with incomplete learning-loop stages: {incomplete}")
if failed:
    print(f"FAILED: {failed} page(s)")
    sys.exit(1)
print("RESULT: PASS")
