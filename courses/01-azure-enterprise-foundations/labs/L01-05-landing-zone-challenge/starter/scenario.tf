# Executable Terraform scenario for L01-05-landing-zone-challenge
resource "azurerm_virtual_network" "hub" { name="L01-05-landing-zone-challenge-vnet" location=var.location resource_group_name=azurerm_resource_group.this.name address_space=["10.10.0.0/16"] tags=local.tags }
