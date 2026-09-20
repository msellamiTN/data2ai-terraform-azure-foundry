# Secure platform Terraform for L06-04-tool-authorization-gate
resource "azurerm_key_vault" "security" { name=substr(replace("L06-04-tool-authorization-gatekv","-",""),0,24) location=var.location resource_group_name=azurerm_resource_group.this.name tenant_id=data.azurerm_client_config.current.tenant_id sku_name="standard" rbac_authorization_enabled=true tags=local.tags }
