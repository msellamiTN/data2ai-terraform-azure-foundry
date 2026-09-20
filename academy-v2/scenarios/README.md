# DATA2AI Scenario Factory

## Purpose

The Scenario Factory makes business scenarios a first-class organizing dimension of DATA2AI Academy. A scenario is not a demo: it is a reusable enterprise workload that evolves across the curriculum from a simple AI interaction to a production-grade agentic platform.

## Scenario model

Each learning experience is expressed as:

**COURSE × SCENARIO × CAPABILITY × FAILURE MODE × EVIDENCE**

The scenario provides the business context; the course provides the engineering capability; failure injection develops diagnosis; evidence demonstrates competence.

## Engineering progression

Simple → Single Agent → RAG → Tools → Secure Tools → Evaluation → Workflow/Multi-Agent → Observability/Reliability → DevSecOps/IaC → Production Simulation

## Scenario catalog

| ID | Scenario | Domain | Core agentic pattern |
|---|---|---|---|
| S01 | Enterprise Knowledge Agent | Enterprise Knowledge | RAG + tools |
| S02 | IT Operations Agent | IT / AIOps | action tools + workflows |
| S03 | Data Engineering Agent | Data Platform | data/SQL tools + workflows |
| S04 | HR Assistant Agent | HR | RAG + sensitive data controls |
| S05 | Customer Service Agent | Customer Care | RAG + CRM/service tools |
| S06 | Intelligent Document Agent | Document Intelligence | document extraction + RAG |
| S07 | Financial Decision Support Agent | Finance | analytical tools + governance |
| S08 | Industrial Operations Agent | Industry | IoT/operational tools + reliability |
| S09 | Security Operations Agent | SecOps | investigation + response tools |
| S10 | Enterprise AI Platform | Platform Engineering | multi-agent platform |

## Scenario lifecycle

1. Business context
2. Requirements
3. Architecture
4. Threat model
5. Agent contract
6. Tool/data contracts
7. Implementation
8. Evaluation
9. Failure injection
10. Recovery
11. Automation
12. Production readiness

## Scenario Pack contract

Every scenario should eventually contain:

- README.md
- business-context.md
- requirements.md
- architecture.md
- threat-model.md
- agent/
- tools/
- rag/ when applicable
- evaluation/
- terraform/
- observability/
- incidents/
- production-readiness.md

The initial repository may scaffold these progressively; a scenario is READY only when the applicable implementation and validation assets are executable.

## Failure engineering

Scenarios deliberately introduce failures such as RBAC denial, Private DNS failure, retrieval quality regression, unauthorized tool invocation, runaway loops, timeouts, evaluation regression, telemetry gaps and cost anomalies.

The learner follows:

SYMPTOM → EVIDENCE → HYPOTHESIS → DIAGNOSIS → ROOT CAUSE → FIX → VALIDATION → PREVENTION
