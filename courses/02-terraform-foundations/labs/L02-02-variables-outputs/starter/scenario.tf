# Executable Terraform scenario for L02-02-variables-outputs
resource "azurerm_resource_group" "scenario" { name="rg-L02-02-variables-outputs-scenario" location=var.location tags=local.tags }
