# Scenario Failure Injection Catalog

Failure injection is a required learning mechanism, not an optional troubleshooting appendix.

| Failure family | Example injection | Learner evidence |
|---|---|---|
| Identity | RBAC denied | role assignment evidence + diagnosis |
| Network | Private DNS broken | DNS/network evidence + root cause |
| Data/RAG | wrong index or poor retrieval | retrieval evidence + quality analysis |
| Tool authorization | unauthorized tool request | policy decision + denial evidence |
| Agent control | runaway loop | trace + stop/recovery evidence |
| Evaluation | regression introduced | failed eval + corrected result |
| Reliability | timeout/dependency failure | telemetry + recovery evidence |
| Observability | missing telemetry | monitoring diagnosis + restoration |
| DevSecOps | quality/security gate failure | pipeline evidence |
| FinOps | unexpected token/tool cost | cost evidence + mitigation |

## Standard incident method

SYMPTOM → EVIDENCE → HYPOTHESIS → DIAGNOSIS → ROOT CAUSE → FIX → VALIDATION → PREVENTION

## Required instructor behavior

Do not reveal the root cause before evidence collection. The learner should first identify identity, scope, dependency, permission, configuration and runtime evidence. Controlled failure is used to measure diagnosis competence.

## Scenario-specific examples

### S01 — Enterprise Knowledge Agent
- RBAC denied
- Private DNS broken
- retrieval regression
- unauthorized tool
- runaway loop

### S02 — IT Operations Agent
- action tool denied
- stale operational data
- workflow timeout
- approval gate bypass attempt

### S03 — Data Engineering Agent
- schema mismatch
- data source permission failure
- pipeline dependency timeout
- data quality regression

### S04 — HR Assistant Agent
- sensitive document leakage path
- over-broad retrieval scope
- identity/RBAC failure
- evaluation regression on restricted content

### S05 — Customer Service Agent
- CRM tool timeout
- incorrect grounding
- escalation failure
- excessive tool calls

### S06 — Intelligent Document Agent
- extraction failure
- malformed document
- index synchronization failure
- evaluation regression

### S07 — Financial Decision Support Agent
- unauthorized financial data access
- stale analytical data
- policy gate failure
- cost anomaly

### S08 — Industrial Operations Agent
- telemetry gap
- tool timeout
- unsafe action approval path
- reliability degradation

### S09 — Security Operations Agent
- investigation tool denial
- incomplete telemetry
- false-positive evaluation regression
- response approval failure

### S10 — Enterprise AI Platform
- platform dependency failure
- policy violation
- environment promotion failure
- observability gap
- cost attribution failure
