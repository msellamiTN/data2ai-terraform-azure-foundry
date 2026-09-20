# Platform/DevSecOps Terraform for L08-02-policy-gate
resource "azurerm_key_vault" "security" { name=substr(replace("L08-02-policy-gatekv","-",""),0,24) location=var.location resource_group_name=azurerm_resource_group.this.name tenant_id=data.azurerm_client_config.current.tenant_id sku_name="standard" rbac_authorization_enabled=true tags=local.tags }
