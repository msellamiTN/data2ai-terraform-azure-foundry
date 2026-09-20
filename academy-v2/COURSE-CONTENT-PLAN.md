# Data2AI Academy — Confirmed Content Implementation Plan

This file is the implementation contract for the complete Academy.

## Delivery rule

The repository is not considered ready when course descriptions exist. Every course must contain learner-facing lessons, executable labs, Terraform/code assets, validation, reproducible Break/Fix, challenge, solution, cleanup, evidence and troubleshooting.

## Learning loop

**LEARN → BUILD → VALIDATE → BREAK → FIX → EXPLAIN → CHALLENGE → SOLUTION → CLEANUP**

## Course map

| # | Course | Core competency |
|---|---|---|
| 00 | Azure AI Infrastructure Engineer — Getting Started | workstation, identity, CLI, lab discipline |
| 01 | Azure Enterprise Foundations | Azure hierarchy, RBAC, identity, governance, networking |
| 02 | Terraform Infrastructure Engineering on Azure | HCL, providers, state, drift, import, validation |
| 03 | Enterprise Terraform & Azure Platform Engineering | modules, environments, remote state, platform patterns |
| 04 | Microsoft Foundry Platform Engineering | Foundry resources, projects, models, connections, Search, storage |
| 05 | Build Enterprise AI Solutions with Microsoft Foundry | GenAI, RAG, agents, document, vision, speech, safety |
| 06 | Secure Enterprise AI Platform | Entra, RBAC, MI, Key Vault, private networking, safety |
| 07 | Enterprise AI Platform as Code | reusable platform modules, composition, contracts, brownfield |
| 08 | AI Platform DevSecOps | PR, quality, security, plan/approval, release evidence |
| 09 | AI Platform Operations, Reliability & FinOps | monitoring, incidents, governance, cost and optimization |
| 10 | Enterprise Agentic AI Platform — Capstone | end-to-end architecture and defense |

## Lab contract

Every executable lab follows:

1. Business Scenario
2. Mission
3. Learning Objectives
4. Architecture
5. Prerequisites
6. Starter Environment
7. BUILD
8. VALIDATE
9. BREAK
10. FIX
11. EXPLAIN
12. CHALLENGE
13. SOLUTION
14. CLEANUP
15. Evidence checklist
16. Troubleshooting

## Engineering evidence

A learner must be able to prove what was built, what Azure contains, what Terraform believes, what failed, why it failed, how it was fixed and how recurrence is prevented.

## Repository quality gates

- no hard-coded secrets;
- Terraform formatted and validated;
- scripts fail clearly;
- challenge does not expose solution;
- cleanup is documented;
- Pages builds from repository content;
- GitHub Actions validates the academy structure.
