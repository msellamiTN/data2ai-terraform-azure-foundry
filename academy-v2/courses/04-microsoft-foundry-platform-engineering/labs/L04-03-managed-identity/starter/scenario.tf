# Executable Terraform scenario for L04-03-managed-identity
resource "azurerm_user_assigned_identity" "lab" { name="L04-03-managed-identity-identity" location=var.location resource_group_name=azurerm_resource_group.this.name tags=local.tags }
resource "azurerm_role_assignment" "reader" { scope=azurerm_resource_group.this.id role_definition_name="Reader" principal_id=azurerm_user_assigned_identity.lab.principal_id }
