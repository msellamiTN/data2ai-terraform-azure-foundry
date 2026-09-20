# Executable scenario infrastructure for L01-02-group-based-rbac
resource "azurerm_user_assigned_identity" "lab" { name="L01-02-group-based-rbac-identity" location=var.location resource_group_name=azurerm_resource_group.this.name tags=local.tags }
resource "azurerm_role_assignment" "reader" { scope=azurerm_resource_group.this.id role_definition_name="Reader" principal_id=azurerm_user_assigned_identity.lab.principal_id }
