from pathlib import Path
import re
import shutil

ROOT = Path(__file__).resolve().parents[2]
OUT = ROOT / "_site_source"
EXERCISES = OUT / "Instructions" / "Exercises"

if OUT.exists():
    shutil.rmtree(OUT)
EXERCISES.mkdir(parents=True)
shutil.copy2(ROOT / "_config.yml", OUT / "_config.yml")
shutil.copytree(ROOT / "_layouts", OUT / "_layouts")
shutil.copy2(ROOT / "docs/index.md", OUT / "index.md")

STAGES = [
    ("LEARN", ["## Mission", "## Learning objectives", "## Concept", "## Why It Matters"]),
    ("BUILD", ["## BUILD", "## Build", "## 2. BUILD", "## 3. BUILD"]),
    ("VALIDATE", ["## Validation", "## VALIDATE", "## 6. Validation", "## 7. Validation"]),
    ("BREAK", ["## Break/Fix", "## BREAK", "## 8. Break/Fix", "## 9. Break/Fix"]),
    ("FIX", ["## FIX", "## Fix", "## Diagnosis", "## Root Cause"]),
    ("CHALLENGE", ["## Challenge", "## CHALLENGE", "## 8. Challenge", "## 9. Challenge"]),
    ("SOLUTION", ["## Solution", "## SOLUTION", "## Reference Solution"]),
    ("CLEANUP", ["## Cleanup", "## CLEANUP", "## 10. Cleanup", "## 11. Cleanup"]),
]

def has_any(text, markers):
    return any(marker.lower() in text.lower() for marker in markers)

def duration_from(text):
    match = re.search(r"(?:Beginner|Intermediate|Advanced)[^\n]*?([0-9]+\s*[–-]\s*[0-9]+\s*min|[0-9]+\s*h)", text, re.I)
    return match.group(1) if match else "Self-paced"

def escape_yaml(value):
    return value.replace(chr(34), chr(92) + chr(34))

def discover_labs():
    seen = set()
    for pattern in ("**/labs/*/README.md", "**/lab-*/README.md"):
        for readme in ROOT.glob(pattern):
            if any(part.startswith(".") for part in readme.relative_to(ROOT).parts):
                continue
            if readme not in seen:
                seen.add(readme)
                yield readme

lab_pages = []
for readme in sorted(discover_labs()):
    rel = readme.relative_to(ROOT)
    lab = rel.parent.name
    text = readme.read_text(encoding="utf-8")
    match = re.search(r"^#\s+(.+)$", text, re.M)
    title = match.group(1).strip() if match else lab
    stages = [name for name, markers in STAGES if has_any(text, markers)]
    duration = duration_from(text)
    body = re.sub(r"^#\s+.+$\n?", "", text, count=1, flags=re.M).lstrip()
    front_matter = (
        "---\nlayout: default\n"
        f'title: "{escape_yaml(title)}"\n'
        f'lab_id: "{lab}"\n'
        f'duration: "{duration}"\n'
        f'stages: "{",".join(stages)}"\n'
        f'maturity: "{len(stages)}/{len(STAGES)}"\n'
        f'permalink: "/Instructions/Exercises/{lab}.html"\n---\n\n'
    )
    wrapper = (
        f"# {title}\n\n> **Lab:** {lab}  \n> **Duration:** {duration}  \n"
        "> **Learning loop:** LEARN → BUILD → VALIDATE → BREAK → FIX → CHALLENGE → SOLUTION → CLEANUP  \n"
        f"> **Lab maturity:** {len(stages)}/{len(STAGES)}\n\n"
        "## Exercise workflow\n\n| Stage | Status |\n|---|---|\n"
    )
    for stage, _ in STAGES:
        wrapper += f"| **{stage}** | {'✅ present' if stage in stages else '🧩 to be completed'} |\n"
    wrapper += (
        "\n> This GitHub Pages view is generated dynamically from the lab README. "
        "The repository README remains the source of truth.\n\n"
        f"> **Source:** {rel}\n\n"
    )
    (EXERCISES / f"{lab}.md").write_text(front_matter + wrapper + body, encoding="utf-8")
    lab_pages.append((lab, title, len(stages), len(STAGES)))

index = [
    "---","layout: default","title: Exercises",
    "permalink: /Instructions/Exercises/","---","","# Exercises","",
    "> Every exercise is generated from its repository README and published automatically.",""
]
for lab, title, present, total in sorted(lab_pages):
    index.append(f"- [{title}]({lab}.html) — {present}/{total} learning stages")
(EXERCISES / "index.md").write_text("\n".join(index) + "\n", encoding="utf-8")
print(f"Generated {len(lab_pages)} exercise page(s).")
