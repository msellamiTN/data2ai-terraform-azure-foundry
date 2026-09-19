# Technical QA — Repository Completeness

Date: 2026-09-19

## Scope

This audit inspects the GitHub repository tree and distinguishes:

1. **Implemented Terraform configurations** — real `*.tf` files.
2. **Lab documentation/scaffolding** — README, validation, broken, challenge and solution directories without executable Terraform.
3. **CI validation** — GitHub Actions execution.

## Current factual result

The current `main` branch contains:

| Artifact | Count |
|---|---:|
| Markdown | 117 |
| Terraform `.tf` | 3 |
| PowerShell `.ps1` | 17 |
| Bash `.sh` | 3 |
| `.tfvars.example` | 2 |
| Total files | 147 |

The only Terraform configuration currently present is the Gold Standard Lab:

`02-terraform-foundations/lab-02-01-first-resource/starter/`

with:

- `main.tf`
- `variables.tf`
- `outputs.tf`

## Validation status

The dynamic **Terraform Full QA** workflow was executed against the current repository.

Result: **PASS**

It performed:

- automatic discovery of every `*.tf` directory;
- `terraform fmt -check`;
- `terraform init -backend=false`;
- `terraform validate`.

The workflow discovered one Terraform configuration directory after removal of the duplicate legacy lab and validated it successfully.

## Important gap

The repository contains many documented labs for Courses 02–10, but most currently do **not** contain executable Terraform starter configurations.

Examples include:

- Course 02 labs 02-02 through 02-05;
- Course 03 labs 03-01 through 03-06;
- Course 04 Foundry labs 04-01 through 04-05;
- Course 06 security labs;
- Course 07 enterprise Terraform labs;
- Course 08 DevOps labs;
- Course 09 observability/FinOps labs;
- Course 10 capstone.

Therefore a global **Terraform syntax PASS** must not be interpreted as a **full Academy implementation PASS**.

## Quality Gate

A lab is considered technically executable only when it has:

- a learner-facing README;
- executable starter configuration when Terraform is required;
- prerequisites;
- explicit files to create/edit;
- executable commands;
- validation;
- reproducible Break/Fix;
- independent Challenge;
- complete Reference Solution;
- cleanup instructions.

The repository currently passes this gate for the Gold Standard Terraform lab, but not yet for the entire Academy.

## Next implementation phase

The correct next step is not to manufacture a PASS. It is to progressively convert the documented labs into executable labs and rerun the same QA after each course.

Priority:

1. Course 02 — complete all Terraform Foundation labs.
2. Course 03 — complete Terraform Engineering on Azure.
3. Course 04 — complete Azure AI Foundry Terraform labs.
4. Course 06 — security infrastructure.
5. Course 07 — enterprise Terraform.
6. Course 08 — CI/CD.
7. Course 09 — observability/FinOps.
8. Course 10 — capstone.

Each completed lab must enter the same automated QA pipeline before being marked complete.
