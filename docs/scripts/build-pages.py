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

lab_pages = []

for readme in sorted(ROOT.glob("**/lab-*/README.md")):
    rel = readme.relative_to(ROOT)
    if any(part.startswith(".") for part in rel.parts):
        continue
    lab = rel.parent.name
    text = readme.read_text(encoding="utf-8")
    match = re.search(r"^#\s+(.+)$", text, re.M)
    title = match.group(1).strip() if match else lab
    stages = [name for name, markers in STAGES if has_any(text, markers)]
    maturity = f"{len(stages)}/{len(STAGES)}"
    duration = duration_from(text)
    stage_value = ",".join(stages)
    body = re.sub(r"^#\s+.+$\n?", "", text, count=1, flags=re.M).lstrip()
    front_matter = (
        "---\n"
        "layout: default\n"
        f'title: "{escape_yaml(title)}"\n'
        f'lab_id: "{lab}"\n'
        f'duration: "{duration}"\n'
        f'stages: "{stage_value}"\n'
        f'maturity: "{maturity}"\n'
        f'permalink: "/Instructions/Exercises/{lab}.html"\n'
        "---\n\n"
    )
    wrapper = (
        f"# {title}\n\n"
        f"> **Lab:** {lab}  \n"
        f"> **Duration:** {duration}  \n"
        f"> **Learning loop:** LEARN → BUILD → VALIDATE → BREAK → FIX → CHALLENGE → SOLUTION → CLEANUP  \n"
        f"> **Lab maturity:** {maturity}\n\n"
        "## Exercise workflow\n\n"
        "| Stage | Status |\n|---|---|\n"
    )
    for stage, _ in STAGES:
        status = "✅ present" if stage in stages else "🧩 to be completed"
        wrapper += f"| **{stage}** | {status} |\n"
    wrapper += (
        "\n> **Important:** This GitHub Pages view is generated dynamically from the lab README. "
        "The repository README remains the source of truth.\n\n"
        f"> **Source:** {rel}\n\n"
    )
    page = front_matter + wrapper + body
    (EXERCISES / f"{lab}.md").write_text(page, encoding="utf-8")
    lab_pages.append((lab, title, len(stages), len(STAGES)))

index_lines = [
    "---",
    "layout: default",
    "title: Exercises",
    "permalink: /Instructions/Exercises/",
    "---",
    "",
    "# Exercises",
    "",
    "> Every exercise is generated from its repository README and published automatically.",
    "",
]
for lab, title, present, total in sorted(lab_pages, key=lambda x: x[0]):
    index_lines.append(f"- [{title}]({{site.baseurl}}/Instructions/Exercises/{lab}.html) — {present}/{total} learning stages")
(EXERCISES / "index.md").write_text("\n".join(index_lines) + "\n", encoding="utf-8")