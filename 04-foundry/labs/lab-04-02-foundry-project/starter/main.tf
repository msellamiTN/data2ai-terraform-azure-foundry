terraform { required_version = ">= 1.6.0" required_providers { azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" } } }
provider "azurerm" { features {} }
variable "location" { type = string default = "westeurope" }
variable "resource_group_name" { type = string }
resource "azurerm_resource_group" "project" { name = var.resource_group_name location = var.location tags = { academy="data2ai" course="04" lab="04-02" boundary="project" } }
output "project_boundary_id" { value = azurerm_resource_group.project.id }
