# Executable Terraform scenario for L02-04-state
resource "azurerm_storage_account" "tfstate" { name=replace("L02-04-statetfstate","-","") resource_group_name=azurerm_resource_group.this.name location=var.location account_tier="Standard" account_replication_type="LRS" min_tls_version="TLS1_2" tags=local.tags }
