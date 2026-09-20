# Course 02 — Terraform Infrastructure Engineering on Azure

## Outcome

Move from imperative Azure operations to declarative Infrastructure as Code and reason about Terraform state versus real Azure state.

## Lessons

1. IaC and declarative thinking
2. Terraform CLI and lifecycle
3. HCL resources
4. Variables and outputs
5. Data sources
6. Providers and versions
7. Dependencies
8. State
9. Import and brownfield
10. Drift
11. Validation and troubleshooting

## Labs

- 02-01 First Azure Resource
- 02-02 Variables and Outputs
- 02-03 Data Sources
- 02-04 State
- 02-05 Import and Drift
- 02-06 Provider Configuration
- 02-07 Dependencies
- 02-08 Validation and Failure Diagnosis
- 02-09 Challenge — Brownfield Resource

## Reasoning checkpoint

For every failure answer:

- What does Terraform believe?
- What does Azure actually contain?
- Why are they different?
- Which control prevents recurrence?

## Definition of Done

The learner can create, inspect, import, diagnose and safely destroy Azure infrastructure with Terraform.
