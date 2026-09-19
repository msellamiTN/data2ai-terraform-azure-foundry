# Lab 02-05 — Import & Drift

> 🟡 **Practice + Break/Fix Lab** · Terraform Foundations · 60–75 min

## Mission
Bring an **existing Azure Resource Group** under Terraform management using `terraform import`, then create and repair a controlled drift.

## Architecture
```
Existing Azure Resource Group
          ↓
terraform import
          ↓
Terraform State
          ↕
Configuration
```

## Phase 1 — Create the brownfield resource
Create a Resource Group manually with Azure CLI:

```powershell
az group create --name <resource-group-name> --location westeurope --tags academy=data2ai lab=02-05
```

## Phase 2 — Import
Configure `terraform.tfvars`, initialize Terraform, then import:

```powershell
terraform init
terraform import azurerm_resource_group.imported "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>"
terraform state list
terraform state show azurerm_resource_group.imported
```

Run:

```powershell
terraform plan
```

The goal is to reach a plan consistent with the imported Azure object. If Terraform proposes changes, compare **Azure properties ↔ configuration ↔ state**.

## Phase 3 — Drift
Change a tag manually:

```powershell
az group update --name <resource-group-name> --set tags.driftTest=manual
terraform plan
```

Record the evidence, identify the drift, then reconcile it through Terraform.

## Break/Fix
Use an incorrect Resource Group ID during import. Diagnose the error without opening the solution.

## Challenge
Import a second existing Resource Group using the same method, without copying a complete solution.

## Validation
Run `validation/validate.ps1` after successful import. It checks Terraform validity and confirms that the imported address exists in State.

## Cleanup
Because the Resource Group was originally created manually, remove it explicitly only after reviewing the impact:

```powershell
terraform destroy
```
