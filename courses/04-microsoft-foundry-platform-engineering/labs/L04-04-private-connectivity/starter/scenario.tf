# Executable Terraform scenario for L04-04-private-connectivity
resource "azurerm_virtual_network" "vnet" { name="L04-04-private-connectivity-vnet" location=var.location resource_group_name=azurerm_resource_group.this.name address_space=["10.20.0.0/16"] tags=local.tags }
resource "azurerm_subnet" "workload" { name="snet-workload" resource_group_name=azurerm_resource_group.this.name virtual_network_name=azurerm_virtual_network.vnet.name address_prefixes=["10.20.1.0/24"] }
