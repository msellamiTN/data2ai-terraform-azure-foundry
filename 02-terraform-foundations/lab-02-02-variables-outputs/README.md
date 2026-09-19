# Lab 02-02 — Variables & Outputs

> 🟢 **Build Lab** · Terraform Foundations · 45–60 min

## Mission
Parameterize an Azure Resource Group instead of hard-coding environment values. Expose useful information through Terraform outputs.

## Architecture
```
terraform.tfvars → variables.tf → Resource Group → outputs.tf
```

## Build
From `starter/`, create a learner workspace and copy the starter files. Create a local `terraform.tfvars` from the example; **never commit credentials or real subscription secrets**.

Run:

```powershell
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
```

Inspect:

```powershell
terraform output
terraform state list
terraform state show azurerm_resource_group.lab
az group show --name <resource-group-name> --output json
```

## Contract
The implementation must:
- use variables for subscription, resource-group name, location and tags;
- create exactly one Resource Group;
- expose ID, name, location and tags as outputs;
- pass `terraform validate`;
- match Terraform State with Azure.

## Break/Fix
In a copy of the configuration, set an invalid Resource Group name or remove a required variable. Capture the Terraform error and diagnose it using **Symptom → Evidence → Root Cause → Fix → Validation**.

## Challenge
Create a second environment named `test` using only `terraform.tfvars` changes. Do not modify the Terraform resource definition.

## Validation
Run `validation/validate.ps1` after apply. It must return explicit `RESULT: PASS`.

## Cleanup
```powershell
terraform destroy
```
