from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[2]
SITE = ROOT / "_site_source" / "Instructions" / "Exercises"

REQUIRED_MARKERS = {
    "Mission": ["## Mission"],
    "Prerequisites": ["## 1. Prerequisites", "## Prerequisites"],
    "Validation": ["## Validation", "## 6. Validation", "## 7. Validation"],
    "Challenge": ["## Challenge", "## 8. Challenge", "## 9. Challenge"],
    "Cleanup": ["## Cleanup", "## 10. Cleanup", "## 11. Cleanup"],
}

pages = sorted(SITE.glob("lab-*.md")) if SITE.exists() else []
if not pages:
    print("ERROR: no generated lab pages found")
    sys.exit(1)

failed = 0
for page in pages:
    text = page.read_text(encoding="utf-8")
    missing = [
        label for label, alternatives in REQUIRED_MARKERS.items()
        if not any(marker in text for marker in alternatives)
    ]
    if missing:
        print(f"FAIL: {page}: missing {', '.join(missing)}")
        failed += 1
    else:
        print(f"PASS: {page}")

print(f"Generated lab pages: {len(pages)}")
if failed:
    print(f"FAILED: {failed} page(s) do not meet the learner-page contract.")
    sys.exit(1)

print("RESULT: PASS")
