# Reference Solution — Lab 02-05

Reference sequence:

```powershell
terraform init
terraform import azurerm_resource_group.imported "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>"
terraform state show azurerm_resource_group.imported
terraform plan
```

Then use Azure CLI to introduce a controlled tag drift, observe it with `terraform plan`, reconcile through Terraform, and validate State.

No subscription IDs, access tokens, passwords or other secrets belong in the repository.
