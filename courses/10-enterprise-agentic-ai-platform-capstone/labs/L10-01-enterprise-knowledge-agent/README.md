# L10-01 — Enterprise Knowledge Agent: Secure Private RAG Platform

## Business Scenario
DATA2AI must deliver an enterprise knowledge assistant over controlled corporate documents. The platform must support retrieval, grounded generation, tool authorization, auditability, cost attribution and operational recovery.

## Mission
Build a production-shaped AI platform using the academy engineering loop. The learner must produce evidence for architecture, security, infrastructure, AI behavior, evaluation and operations.

## Requirements
- Entra-based identity and least privilege.
- Managed identity for service-to-service access.
- Terraform-managed platform resources.
- Private connectivity for protected data-plane services.
- RAG over an approved knowledge source.
- Deterministic tool authorization outside the agent.
- Evaluation dataset with pass/fail criteria.
- Logs, metrics and agent traces.
- Cost attribution using mandatory tags.
- Reproducible failure injection and recovery.
- No plaintext credentials in source control.

## Architecture
User → Application → Agent Runtime → Policy Gate → Model / RAG / Tools
                                      ↓
                                  AI Search
                                      ↓
                              Storage / Data
                                      ↓
                    Logs · Metrics · Traces · Evals · Cost

Control planes:
- Identity & governance: Entra ID, RBAC, Policy.
- Platform: Terraform, CI/CD, validation.
- Security: Managed Identity, Key Vault, Private Link, Private DNS.
- AI: Foundry/model endpoint, Search, agent/tool contracts.
- Operations: monitoring, evaluation, incident/runbook.

## Threat Model
| Threat | Control | Evidence |
|---|---|---|
| Unauthorized tool invocation | External policy gate | denied-call test |
| Secret exposure | Managed identity / Key Vault | source scan + identity evidence |
| Data exfiltration | RBAC + network controls | access test |
| Prompt injection | retrieval/tool policy + evaluation | adversarial test |
| Retrieval poisoning | source governance + evaluation | poisoned-document test |
| Runaway agent loop | iteration/time/token limits | forced-loop test |
| Configuration drift | Terraform plan/import/drift test | plan evidence |

## Prerequisites
- Azure subscription with permitted training scope.
- Azure CLI authenticated.
- Terraform installed and validated.
- Git repository cloned.
- Access to the DATA2AI academy sandbox.
- Approved Azure AI/Foundry services available in the target region.

## Starter Environment
Create or receive:
- resource group
- identity/group assignments
- AI platform resource boundary
- storage and search baseline
- monitoring baseline
- Terraform state boundary

Record identity, subscription, tenant, region and resource-group evidence before deployment.

## Guided Tasks
1. Write the ADRs before implementation.
2. Define the agent contract.
3. Define tool schemas and authorization policy.
4. Compose Terraform modules.
5. Deploy the platform baseline.
6. Configure the knowledge plane.
7. Implement RAG retrieval and grounding.
8. Add evaluation cases.
9. Add observability and cost tags.
10. Execute the validation harness.
11. Capture evidence.

## Validation
Minimum acceptance evidence:
- `terraform fmt -check`
- `terraform validate`
- plan reviewed with expected resource boundaries
- identity access test
- network/private-access test where applicable
- RAG grounding test
- unauthorized-tool denial test
- evaluation report
- telemetry evidence
- cost/tag validation

## Break/Fix
Inject one failure at a time. Do not change configuration before collecting evidence.

### Failure A — RBAC denied
Symptom: agent/tool cannot access approved data.
Evidence: identity, role assignment, scope and authorization result.
Diagnosis: distinguish identity failure from role/scope failure.
Fix: minimum required assignment.
Validation: repeat the same access test.

### Failure B — Private DNS broken
Symptom: private service name does not resolve.
Evidence: DNS query, private endpoint, zone link and network path.
Fix: restore the missing DNS relationship.
Validation: resolution + service request.

### Failure C — Tool authorization bypass attempt
Symptom: agent requests a forbidden operation.
Expected behavior: policy gate denies execution.
Validation: denial is deterministic and logged.

### Failure D — Runaway loop
Symptom: repeated tool/model calls.
Evidence: trace, iteration count, token/cost signal.
Fix: enforce bounded execution and recovery policy.
Validation: loop terminates within the defined limit.

### Failure E — Evaluation regression
Symptom: a previously passing test fails.
Evidence: evaluation case, model/config version, retrieval context.
Fix: correct the changed artifact and rerun the suite.
Validation: regression suite passes.

## Challenge
Design and implement the missing pieces from requirements only:
- choose shared vs dedicated AI Search
- choose private connectivity scope
- define tool authorization boundary
- define evaluation gates
- define SLOs
- define cost attribution
- produce ADRs
- implement Terraform
- defend the trade-offs

No procedural solution is supplied for the challenge.

## Reference Solution
The reference solution must contain:
- architecture diagram
- threat model
- ADR set
- Terraform modules and environment contract
- agent/tool contracts
- evaluation suite
- security tests
- observability configuration
- incident runbook
- cost model
- production-readiness evidence

The instructor should compare evidence, not merely repository shape.

## Cleanup
Destroy only resources created by the lab. Verify:
- no orphan resource groups
- no persistent training secrets
- no unexpected role assignments
- no residual private endpoints
- Terraform state is consistent
- cost tags and ownership records remain auditable

## Evidence checklist
- [ ] Architecture
- [ ] Threat model
- [ ] ADRs
- [ ] Terraform validation
- [ ] Deployment evidence
- [ ] Identity/RBAC evidence
- [ ] Network evidence
- [ ] RAG/evaluation evidence
- [ ] Tool authorization evidence
- [ ] Break/Fix evidence
- [ ] Observability evidence
- [ ] FinOps evidence
- [ ] Cleanup evidence
- [ ] Final technical defense
