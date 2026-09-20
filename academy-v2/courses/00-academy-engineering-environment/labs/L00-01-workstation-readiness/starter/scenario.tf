# Executable scenario infrastructure for L00-01-workstation-readiness
resource "azurerm_resource_group" "scenario" { name="rg-L00-01-workstation-readiness-scenario" location=var.location tags=local.tags }
