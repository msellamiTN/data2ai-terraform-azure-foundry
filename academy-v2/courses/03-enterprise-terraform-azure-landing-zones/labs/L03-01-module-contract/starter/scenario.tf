# Executable Terraform scenario for L03-01-module-contract
resource "azurerm_resource_group" "scenario" { name="rg-L03-01-module-contract-scenario" location=var.location tags=local.tags }
