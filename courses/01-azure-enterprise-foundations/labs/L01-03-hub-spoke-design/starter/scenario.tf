# Executable scenario infrastructure for L01-03-hub-spoke-design
resource "azurerm_virtual_network" "hub" { name="L01-03-hub-spoke-design-vnet" location=var.location resource_group_name=azurerm_resource_group.this.name address_space=["10.10.0.0/16"] tags=local.tags }
resource "azurerm_subnet" "workload" { name="snet-workload" resource_group_name=azurerm_resource_group.this.name virtual_network_name=azurerm_virtual_network.hub.name address_prefixes=["10.10.1.0/24"] }
