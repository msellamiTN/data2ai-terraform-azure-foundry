terraform { required_version = ">= 1.6.0" required_providers { azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" } } }
provider "azurerm" { features {} }
variable "location" { type = string default = "westeurope" }
variable "resource_group_name" { type = string }
variable "name" { type = string }
resource "azurerm_resource_group" "training" { name = var.resource_group_name location = var.location tags = { academy="data2ai" course="04" lab="04-01" managed_by="terraform" } }
output "resource_group_id" { value = azurerm_resource_group.training.id }
