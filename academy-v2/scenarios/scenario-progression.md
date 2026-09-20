# Scenario Progression Model

## Maturity ladder

| Level | Capability | Evidence expected |
|---:|---|---|
| 0 | AI interaction | reproducible request/response |
| 1 | Single Agent | agent contract + successful run |
| 2 | RAG | retrieval evidence + grounded response |
| 3 | Tool Calling | tool contract + execution evidence |
| 4 | Secure Tools | policy decision + authorized execution |
| 5 | Evaluation | repeatable eval set + threshold |
| 6 | Workflow / Multi-Agent | explicit orchestration contract |
| 7 | Observability & Reliability | traces, metrics, incident evidence |
| 8 | DevSecOps & IaC | automated gates + reproducible deployment |
| 9 | Production Simulation | recovery, defense and readiness evidence |

## Harness Engineering

The scenario evolves through the engineering loop:

HUMAN INTENT → AGENT PLAN → TOOL USE → EXECUTION → OBSERVATION → EVALUATION → ACCEPT OR DIAGNOSE → FIX → RETEST

Deterministic authorization remains external to the model:

AGENT → POLICY GATE → TOOL → DATA POLICY → RESULT

**Prompt ≠ Security Control.**

## Scenario promotion rule

A scenario is promoted to the next maturity level only when its evidence is reproducible and the learner can explain the design, failure mode, remediation and prevention mechanism.
