# COURSE 04 — Microsoft Foundry Foundations

## Mission

Understand the Foundry resource hierarchy and build the platform progressively.

## Labs

- **04-01 Foundation** — create and inspect the Foundry foundation.
- **04-02 Project Exploration** — explore projects, models, deployments and connections.
- **04-03 Terraform** — reproduce the understood platform with IaC.
- **04-04 Model Deployment** — configure and validate model deployments.
- **04-05 Break/Fix** — diagnose real configuration failures.

## Platform progression

```text
Resource Group
 ↓
Foundry Resource
 ↓
Project
 ↓
Model
 ↓
Deployment
 ↓
Connections / Identity
```

## Learner rule

First understand the platform manually. Then automate the architecture. This prevents Terraform syntax from hiding Azure AI concepts.

## Break/Fix

Learners investigate model/version, region, capacity/quota, provider/API and permission errors from evidence.