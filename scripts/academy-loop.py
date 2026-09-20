from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
COURSES = ROOT / "academy-v2" / "courses"
STAGES = [
    "Business Scenario","Mission","Requirements","Architecture","Threat Model",
    "Prerequisites","Starter Environment","Guided Tasks","Validation","Break/Fix",
    "Challenge","Reference Solution","Cleanup","Evidence checklist"
]

def main():
    rows = []
    for course in sorted(p for p in COURSES.iterdir() if p.is_dir()):
        readme = course / "README.md"
        labs = sorted((course / "labs").glob("*/README.md"))
        incomplete = []
        for lab in labs:
            text = lab.read_text(encoding="utf-8").lower()
            missing = [s for s in STAGES if s.lower() not in text]
            if missing:
                incomplete.append(lab.name)
        status = "READY" if readme.exists() and labs and not incomplete else "BUILDING"
        rows.append((course.name, len(labs), status))
    print("DATA2AI ACADEMY LOOP")
    print("BUILD → VALIDATE → BREAK → FIX → CHALLENGE → AUTOMATE → DEFEND")
    for name, count, status in rows:
        print(f"{status:8} {name:60} labs={count}")
    pending = [r[0] for r in rows if r[2] != "READY"]
    print(f"\nCourses scanned: {len(rows)}")
    print(f"Courses requiring another loop: {len(pending)}")
    if pending:
        print("NEXT LOOP:")
        for item in pending:
            print(f"- {item}")
    else:
        print("RESULT: READY")

if __name__ == "__main__":
    main()
