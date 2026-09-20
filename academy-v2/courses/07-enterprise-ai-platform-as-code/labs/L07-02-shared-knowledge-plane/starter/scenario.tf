# Secure platform Terraform for L07-02-shared-knowledge-plane
resource "azurerm_storage_account" "knowledge" { name=replace("L07-02-shared-knowledge-planest","-","") resource_group_name=azurerm_resource_group.this.name location=var.location account_tier="Standard" account_replication_type="LRS" min_tls_version="TLS1_2" tags=local.tags }
