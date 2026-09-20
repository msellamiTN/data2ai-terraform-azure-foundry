# Operations/capstone Terraform for L09-03-reliability-incident
resource "azurerm_log_analytics_workspace" "ops" { name="L09-03-reliability-incident-law" location=var.location resource_group_name=azurerm_resource_group.this.name sku="PerGB2018" retention_in_days=30 tags=local.tags }
