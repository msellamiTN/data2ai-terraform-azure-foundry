# Lab 02-03 — Data Sources

> 🟢 **Build Lab** · Terraform Foundations · 45–60 min

## Mission
Discover an existing Azure Resource Group with a Terraform **data source**, then create a Storage Account inside the discovered Resource Group.

## Architecture
```
Azure existing RG
       ↓
data.azurerm_resource_group.target
       ↓
azurerm_storage_account.lab
```

## Prerequisite
Use the Resource Group created in Lab 02-02, or another existing Resource Group you are authorized to use.

## Build
Create `terraform.tfvars` from the example and set a globally unique lowercase Storage Account name.

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
az storage account show --name <storage-account-name> --resource-group <resource-group-name>
```

## Contract
- the Resource Group must be referenced with `data "azurerm_resource_group"`;
- Terraform must not attempt to create that Resource Group;
- the Storage Account is created in the discovered location;
- outputs expose the discovered RG ID/location and Storage Account ID/name.

## Break/Fix
Change the Resource Group name to one that does not exist. Run `terraform plan`, preserve the error evidence, identify the data-source lookup failure, restore the correct name and validate again.

## Challenge
Use a different existing Resource Group without changing `main.tf`; only variables should change.

## Cleanup
Destroy only the Storage Account created by this lab. Do not delete the pre-existing Resource Group.
