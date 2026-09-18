# Lab — Remote State

> 🟢 Data2AI Academy — Learner Execution Guide

## Mission
Build this scenario as an engineer. Create or edit the important files, execute commands, read outputs, validate independently, diagnose a controlled failure, repair it and complete the challenge.

## 1. Prerequisites
Verify Git, Azure CLI, Terraform and Azure authentication:
```powershell
git --version
az version
terraform version
az account show
```

## 2. Workspace
```powershell
git clone https://github.com/msellamiTN/data2ai-terraform-azure-foundry.git
cd data2ai-terraform-azure-foundry
Get-Location
New-Item -ItemType Directory -Name student-work -Force
cd student-work
code .
```

## 3. BUILD — Create / edit
Start from the starter material, not the solution. Create the files requested by the scenario. For Terraform, build progressively: provider/versions → variables → tfvars → resources/data/modules → outputs → validation.

After each meaningful edit:
```powershell
terraform fmt
terraform validate
```

## 4. RUN — Execute and observe
Run the commands required by the scenario. For Terraform:
```powershell
terraform init
terraform validate
terraform plan
```
Apply only after reading the plan:
```powershell
terraform apply
```

## 5. READ THE OUTPUT
After each command answer:
1. What did it do?
2. What did the output prove?
3. What changed?
4. What should I inspect next?

For the Terraform plan, locate the add/change/destroy counts and compare them with the mission.

## 6. VALIDATE
Use an independent view:
```powershell
terraform state list
terraform state show <address>
terraform output
az resource list --output table
```
Compare configuration ↔ Terraform state ↔ Azure.

## 7. EVIDENCE
```powershell
New-Item -ItemType Directory -Name evidence -Force
terraform validate | Tee-Object evidence/03-validate.txt
terraform plan | Tee-Object evidence/04-plan.txt
```
Capture apply, inspection and validation evidence too.

## 8. BREAK/FIX
Use the supplied broken scenario. Follow:
```text
Symptom → Evidence → Diagnosis → Root Cause → Fix → Validation → Prevention
```
First identify the failing layer: HCL → Terraform → Provider/API → Azure → Identity/RBAC → Network → Quota/Capacity.

## 9. CHALLENGE
Complete the independent requirements before opening solution. Prove your implementation with commands, outputs, validation and evidence.

## 10. SOLUTION
Only after the challenge, compare architecture, file structure, interfaces, validation, security and maintainability with the reference implementation.

## 11. CLEANUP
```powershell
terraform plan -destroy
terraform destroy
```
Review destruction before confirming.

## Definition of Done
- [ ] I created/edited the important files.
- [ ] I executed the commands.
- [ ] I interpreted the outputs.
- [ ] I validated independently.
- [ ] I completed Break/Fix.
- [ ] I completed the challenge before opening the solution.
- [ ] I captured evidence.
- [ ] I cleaned up resources.
