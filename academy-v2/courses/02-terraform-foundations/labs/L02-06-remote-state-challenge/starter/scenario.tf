# Executable Terraform scenario for L02-06-remote-state-challenge
resource "azurerm_storage_account" "tfstate" { name=replace("L02-06-remote-state-challengetfstate","-","") resource_group_name=azurerm_resource_group.this.name location=var.location account_tier="Standard" account_replication_type="LRS" min_tls_version="TLS1_2" tags=local.tags }
