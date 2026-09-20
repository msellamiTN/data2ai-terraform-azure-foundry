# Secure platform Terraform for L06-03-private-ai-platform
resource "azurerm_virtual_network" "vnet" { name="L06-03-private-ai-platform-vnet" location=var.location resource_group_name=azurerm_resource_group.this.name address_space=["10.30.0.0/16"] tags=local.tags }
resource "azurerm_subnet" "workload" { name="snet-workload" resource_group_name=azurerm_resource_group.this.name virtual_network_name=azurerm_virtual_network.vnet.name address_prefixes=["10.30.1.0/24"] }
