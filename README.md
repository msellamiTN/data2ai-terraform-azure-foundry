# Data2AI Academy — Terraform + Azure AI Foundry

> **Engineer AI infrastructure. Don’t just learn commands.**

This repository is a **build-first, self-paced engineering academy**. The learner creates and edits project files, executes commands, reads outputs, validates Azure independently, diagnoses controlled failures, and completes challenges before opening reference solutions.

## Learning loop

**LEARN → BUILD → RUN → READ OUTPUT → VALIDATE → BREAK → FIX → CHALLENGE → SOLUTION → CLEANUP**

## 11-course journey

| Course | Outcome |
|---|---|
| 00 | Verified learner workstation and Azure identity |
| 01 | Azure resources, CLI and RBAC fundamentals |
| 02 | Terraform projects, variables, state, import and drift |
| 03 | Maintainable Terraform on Azure |
| 04 | Microsoft Foundry platform foundations |
| 05 | End-to-end Foundry AI scenarios |
| 06 | Secure AI platform engineering |
| 07 | Enterprise Terraform architecture |
| 08 | CI/CD and controlled promotion |
| 09 | Observability, governance and FinOps |
| 10 | Independent enterprise AI platform capstone |

## Learner contract

Every lab must answer four questions:

1. **What did I build?**
2. **What did the command output prove?**
3. **What failed and why?**
4. **How did I prove the fix?**

A successful `terraform apply` alone is **not sufficient evidence**.

## Standard lab structure

```text
MISSION
  ↓
CREATE / EDIT FILES
  ↓
RUN COMMAND
  ↓
READ OUTPUT
  ↓
VALIDATE
  ↓
BREAK
  ↓
DIAGNOSE
  ↓
FIX
  ↓
CHALLENGE
  ↓
SOLUTION
  ↓
CLEANUP
```

Start with [Learner Guide](./learner-guide.md).

## Academy operating system

- [Learner Guide](./learner/learner-guide.md)
- [Instructor Guide](./instructor/instructor-guide.md)
- [Lab Delivery Guide](./instructor/lab-delivery-guide.md)
- [Lab Rubric](./instructor/grading-rubrics/lab-rubric.md)
- [Common Failures](./instructor/troubleshooting/common-failures.md)
- [Academy Release Standard](./docs/academy-release-standard.md)
- [Lab Template](./docs/templates/lab-template.md)

## GitHub Pages

The learner-facing site is generated dynamically from the lab `README.md` files. The repository remains the source of truth; Pages is the execution-oriented presentation layer.

**LEARN → BUILD → VALIDATE → BREAK → FIX → CHALLENGE → SOLUTION → CLEANUP**

The Pages pipeline generates Microsoft Learning-style exercise pages, validates the generated page contract, builds Jekyll, and deploys through GitHub Pages.

## Readiness policy

A lab is not **READY** because Terraform syntax passes. READY requires executable implementation, real validation, controlled Break/Fix, independent Challenge, complete Solution, cleanup, and the learner/instructor contract. See the [Academy Release Standard](./docs/academy-release-standard.md).


## NEW — Elite Enterprise AI Platform Track

The redesigned enterprise curriculum is now available under [academy-v2](./academy-v2/).

**Terraform → Azure Landing Zones → Microsoft Foundry → Agentic AI → Security → Platform as Code → DevSecOps → SRE/FinOps → Capstone**

See the new curriculum at [academy-v2/README.md](./academy-v2/README.md) and the [Enterprise AI Platform reference architecture](./academy-v2/architecture/enterprise-ai-platform.md).
