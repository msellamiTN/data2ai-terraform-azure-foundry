# Executable Terraform scenario for L02-05-import-drift
resource "azurerm_resource_group" "scenario" { name="rg-L02-05-import-drift-scenario" location=var.location tags=local.tags }
