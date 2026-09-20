# L03-01 — Module Contract

## Scenario
A platform team must expose a reusable Azure resource-group contract to workload teams.

## Mission
Create a Terraform module with explicit inputs, validation, outputs, tags and a deterministic contract.

## Acceptance criteria
- module has variables and validation;
- required tags are enforced;
- resource group name is deterministic;
- outputs expose the resource identity;
- terraform fmt and validate pass;
- validation script returns RESULT: READY.

## Break/Fix
The instructor changes one required input or tag contract. Diagnose the plan/validation failure before fixing it.

## Challenge
Extend the module for environment and learner isolation without copying the module.

## Evidence
Capture fmt, validate, plan and Azure verification output.
