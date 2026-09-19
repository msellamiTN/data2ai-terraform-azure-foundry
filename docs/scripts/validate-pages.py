from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[2]
SITE = ROOT / "_site_source" / "Instructions" / "Exercises"

pages = sorted(SITE.glob("lab-*.md")) if SITE.exists() else []
if not pages:
    print("ERROR: no generated lab pages found")
    sys.exit(1)

failed = 0
incomplete = 0
required_contract = [
    "layout: default",
    "Learning loop:",
    "## Exercise workflow",
    "**LEARN**",
    "**BUILD**",
    "**VALIDATE**",
    "**BREAK**",
    "**FIX**",
    "**CHALLENGE**",
    "**SOLUTION**",
    "**CLEANUP**",
    "Source:",
]

for page in pages:
    text = page.read_text(encoding="utf-8")
    missing = [item for item in required_contract if item not in text]
    if missing:
        print(f"FAIL: {page}: missing page contract: {', '.join(missing)}")
        failed += 1
        continue
    # The stage matrix is deliberately informational: legacy/scaffold labs can
    # be published while their missing stages remain visible to the learner.
    stages = re.search(r'Lab maturity:\s*([0-9]+)/([0-9]+)', text)
    if stages and stages.group(1) != stages.group(2):
        incomplete += 1
    print(f"PASS: {page}")

print(f"Generated lab pages: {len(pages)}")
print(f"Pages with incomplete learning loop stages: {incomplete}")
if failed:
    print(f"FAILED: {failed} page(s) do not meet the generated-page contract.")
    sys.exit(1)

print("RESULT: PASS")