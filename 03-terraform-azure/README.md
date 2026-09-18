# COURSE 03 — Terraform Engineering on Azure

## Mission

Move from Terraform syntax to maintainable Azure infrastructure engineering.

## Labs

- **03-01 Project** — clean Terraform structure.
- **03-02 Naming & Tags** — reusable conventions.
- **03-03 Modules** — create and consume reusable modules.
- **03-04 Remote State** — migrate state to Azure Storage.
- **03-05 Environments** — DEV/TEST separation.
- **03-06 Validation** — validations, checks and tests.

## Engineering loop

```text
DESIGN → CREATE FILES → FORMAT → VALIDATE → PLAN → APPLY → INSPECT → TEST
```

## Break/Fix focus

Backend errors, module input/output mismatches, provider constraints, environment mistakes and validation failures.

The learner must explain not only **what** failed but **which Terraform/Azure layer** caused the failure.