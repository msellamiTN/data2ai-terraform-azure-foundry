# LAB 00-01 — Environment Discovery

## Business Scenario
You are joining an AI platform engineering team. Before touching Azure, prove that your workstation is reproducible.

## Mission
Inventory Git, PowerShell, Azure CLI, Terraform and the active Azure context.

## Learning objectives
- identify required engineering tools;
- distinguish local tool state from Azure state;
- produce evidence suitable for troubleshooting.

## Architecture
`WORKSTATION → CLI TOOLS → AZURE SUBSCRIPTION`

## BUILD
Run version checks and inspect the current Azure context. Record only non-secret evidence.

## VALIDATE
All required tools are available and Azure account/subscription context is explicit.

## BREAK
Remove or bypass one required executable from PATH in a safe test shell.

## FIX
Use the evidence to identify the missing executable or PATH problem and restore the working environment.

## EXPLAIN
Explain why environment discovery is a prerequisite for reproducible labs.

## CHALLENGE
Create a one-command environment report that another learner can run.

## SOLUTION
Compare your report structure with the reference implementation after completing the challenge.

## CLEANUP
Close the test shell and remove temporary files.

## Evidence checklist
Tool versions, Azure account context, subscription context, validation output.

## Troubleshooting
Use: **SYMPTOM → EVIDENCE → DIAGNOSIS → ROOT CAUSE → FIX → VALIDATION → PREVENTION**.
