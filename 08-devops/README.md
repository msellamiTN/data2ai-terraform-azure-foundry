# COURSE 08 — DevOps & AI Platform CI/CD

## Mission

Automate Terraform validation, planning and controlled promotion.

## Labs

- PR validation
- Plan artifact
- Environment promotion
- Pipeline Break/Fix

## Pipeline

```text
Git
 ↓
fmt / validate / test
 ↓
plan
 ↓
review / approval
 ↓
apply
 ↓
Azure validation
```

## Learner requirement

Do not treat CI logs as magic. Read the failed job, identify the failing layer and reproduce the relevant command locally before fixing the pipeline.