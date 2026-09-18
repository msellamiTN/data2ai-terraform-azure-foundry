# Lab — Data Sources

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission

Build the **Data Sources** scenario as an engineer. You must create or edit the important files, execute the commands, read the outputs, validate the result, diagnose a controlled failure, repair it and complete the challenge.

## 1. Prerequisites

Verify the toolchain:

```powershell
git --version
az version
terraform version
```

Authenticate and verify the Azure context when Azure is involved:

```powershell
az account show
az account list --output table
```

## 2. Workspace

Clone the repository if needed:

```powershell
git clone https://github.com/msellamiTN/data2ai-terraform-azure-foundry.git
cd data2ai-terraform-azure-foundry
```

Enter this lab and prove your location:

```powershell
Get-Location
```

Create your own workspace when the lab requires implementation:

```powershell
New-Item -ItemType Directory -Name student-work -Force
cd student-work
code .
```

Do not use the reference solution as your starting point.

## 3. BUILD — Create / edit the project

Read the lab objective and inspect the starter material.

Create the files requested by the scenario. For Terraform work, the normal construction sequence is:

```text
main.tf
 ↓
provider / versions
 ↓
variables.tf
 ↓
terraform.tfvars
 ↓
resources / data / modules
 ↓
outputs.tf
 ↓
validation
```

Do not paste a complete solution. Enter the important blocks yourself and understand every argument.

## 4. RUN — Execute commands

For Terraform labs:

```powershell
terraform fmt
terraform init
terraform validate
terraform plan
```

Apply only after reading the plan:

```powershell
terraform apply
```

For Azure labs, use the corresponding Azure CLI commands from the scenario and inspect the returned JSON/table output.

## 5. READ THE OUTPUT

After every important command, stop and answer:

1. What did the command do?
2. What did the output prove?
3. What changed?
4. What should I inspect next?

For `terraform plan`, locate:

```text
Plan: X to add, Y to change, Z to destroy.
```

Confirm that the resource addresses and counts match the mission before applying.

## 6. VALIDATE

Validate the result from an independent perspective.

For Terraform/Azure labs inspect:

```powershell
terraform state list
terraform state show <address>
terraform output
az resource list --output table
```

Compare:

```text
Configuration ↔ Terraform State ↔ Azure
```

For AI scenarios also validate the project/model/deployment/service contract required by the scenario.

## 7. EVIDENCE CHECKPOINT

Create evidence:

```powershell
New-Item -ItemType Directory -Name evidence -Force
```

Capture important commands, for example:

```powershell
terraform validate | Tee-Object evidence/03-validate.txt
terraform plan | Tee-Object evidence/04-plan.txt
terraform apply | Tee-Object evidence/05-apply.txt
```

Keep evidence showing both success and failure/recovery.

## 8. BREAK/FIX

Use the supplied `broken/` scenario when present.

Deliberately reproduce the failure. Then use:

```text
SYMPTOM
 ↓
EVIDENCE
 ↓
DIAGNOSIS
 ↓
ROOT CAUSE
 ↓
FIX
 ↓
VALIDATION
 ↓
PREVENTION
```

First identify the failing layer:

```text
HCL → Terraform → Provider/API → Azure → Identity/RBAC → Network → Quota/Capacity
```

Do not jump directly to the reference answer.

## 9. CHALLENGE

Before opening `solution/`, implement the independent challenge.

The challenge should be solved from requirements, not from a finished file.

Demonstrate:

- your own implementation;
- expected plan or execution result;
- independent validation;
- evidence;
- cleanup.

## 10. SOLUTION

Only after the challenge, inspect the reference implementation.

Compare:

- architecture;
- file structure;
- interfaces;
- resource configuration;
- validation;
- security;
- maintainability.

The goal is to understand the engineering choices, not copy the answer.

## 11. CLEANUP

For temporary Azure infrastructure:

```powershell
terraform plan -destroy
terraform destroy
```

Review destruction before confirming.

## 12. Definition of Done

- [ ] I created or edited the important files myself.
- [ ] I executed the commands myself.
- [ ] I read and interpreted the outputs.
- [ ] I validated the result independently.
- [ ] I completed Break/Fix.
- [ ] I diagnosed the root cause.
- [ ] I completed the challenge before opening the solution.
- [ ] I captured evidence.
- [ ] I cleaned up temporary resources.

## Knowledge Check

1. What was built?
2. Which command gave the most useful evidence?
3. What did that output prove?
4. Which layer failed during Break/Fix?
5. What was the root cause?
6. How would you prevent the same failure in production?
