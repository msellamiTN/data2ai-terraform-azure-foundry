# Executable scenario infrastructure for L01-01-enterprise-resource-boundary
resource "azurerm_resource_group" "scenario" { name="rg-L01-01-enterprise-resource-boundary-scenario" location=var.location tags=local.tags }
