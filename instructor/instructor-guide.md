# Data2AI Academy — Instructor Guide

## Instructor philosophy

> **Do not teach Terraform and Azure AI Foundry. Train engineers to build, validate, break, fix, explain, and automate AI infrastructure.**

The academy uses an execution-first model:

**LEARN → BUILD → VALIDATE → BREAK → FIX → CHALLENGE → SOLUTION → CLEANUP**

Target ratio: approximately **70% hands-on / 30% concept**.

## Instructor operating model

### 1. Brief
Explain only the context required for the mission. Do not turn the lab into a lecture.

### 2. Build
The learner writes or modifies the implementation. Ask: What are you creating? Why does Terraform own it? What is the Azure dependency? What evidence will prove success?

### 3. Validate
Require evidence, not verbal confirmation: Terraform result, Azure CLI/resource evidence, validation result, and relevant state/output evidence.

### 4. Break
Introduce one controlled failure. The learner observes the symptom before receiving a hint.

### 5. Fix
Use **Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention**. Do not reveal the fix immediately.

### 6. Challenge
Change one or more requirements. The learner designs the solution independently.

### 7. Solution
Only after the challenge, compare with the reference implementation and discuss engineering trade-offs.

## Hint ladder

**Hint 1 — Locate:** Which command or file can prove where the failure occurs?

**Hint 2 — Classify:** Is this a Terraform syntax, provider, Azure identity, RBAC, state, quota, or configuration problem?

**Hint 3 — Inspect:** Which Terraform or Azure object should we inspect next?

**Hint 4 — Diagnose:** What changed between the expected contract and the observed state?

**Hint 5 — Fix:** Apply the smallest change that restores the contract.

Never jump directly to the solution.

## Definition of instructor success

The learner can independently execute the lab, interpret output, diagnose the deliberate failure, repair the implementation, complete the challenge, explain the architecture, justify the Terraform design, provide evidence, and clean up resources.
