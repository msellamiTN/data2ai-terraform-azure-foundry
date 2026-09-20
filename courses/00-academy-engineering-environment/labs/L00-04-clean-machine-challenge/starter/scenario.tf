# Executable scenario infrastructure for L00-04-clean-machine-challenge
resource "azurerm_resource_group" "scenario" { name="rg-L00-04-clean-machine-challenge-scenario" location=var.location tags=local.tags }
