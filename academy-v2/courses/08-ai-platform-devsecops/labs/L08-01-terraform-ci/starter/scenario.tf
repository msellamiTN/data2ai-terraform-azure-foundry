# Platform/DevSecOps Terraform for L08-01-terraform-ci
resource "azurerm_storage_account" "platform" { name=replace("L08-01-terraform-cist","-","") resource_group_name=azurerm_resource_group.this.name location=var.location account_tier="Standard" account_replication_type="LRS" min_tls_version="TLS1_2" tags=local.tags }
