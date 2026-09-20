# Executable Terraform scenario for L02-01-first-resource
resource "azurerm_resource_group" "scenario" { name="rg-L02-01-first-resource-scenario" location=var.location tags=local.tags }
