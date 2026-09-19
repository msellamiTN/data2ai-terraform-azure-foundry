# Lab 02-04 — Terraform State

> 🟢 **Build Lab** · Terraform Foundations · 45–60 min

## Mission
Understand the relationship between **Configuration → State → Azure** and learn the commands used to inspect Terraform State.

## Architecture
```
HCL Configuration
      ↓
Terraform State (local for this lab)
      ↓
Azure Resource Group + Storage Account
```

## Build
Create `terraform.tfvars` and run:

```powershell
terraform fmt
terraform init
terraform validate
terraform plan
terraform apply
```

Inspect State:

```powershell
terraform state list
terraform state show azurerm_resource_group.lab
terraform state show azurerm_storage_account.state_demo
terraform output
```

Also inspect the local `terraform.tfstate` file conceptually. Do not edit it manually.

## Contract
State must contain both expected resource addresses:
- `azurerm_resource_group.lab`
- `azurerm_storage_account.state_demo`

## Break/Fix
Change a resource property in Azure manually, then run `terraform plan`. Observe drift detection. Restore the desired configuration through Terraform and compare the plan before and after reconciliation.

## Challenge
Explain, with evidence, why Terraform needs State even when the desired configuration already exists in HCL.

## Cleanup
```powershell
terraform destroy
```
