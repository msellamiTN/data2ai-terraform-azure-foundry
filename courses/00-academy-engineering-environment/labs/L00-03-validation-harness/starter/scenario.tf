# Executable scenario infrastructure for L00-03-validation-harness
resource "azurerm_resource_group" "scenario" { name="rg-L00-03-validation-harness-scenario" location=var.location tags=local.tags }
