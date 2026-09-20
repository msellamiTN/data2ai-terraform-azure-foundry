# Executable Terraform scenario for L02-03-data-sources
resource "azurerm_resource_group" "scenario" { name="rg-L02-03-data-sources-scenario" location=var.location tags=local.tags }
