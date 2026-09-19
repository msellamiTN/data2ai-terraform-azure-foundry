terraform {
  required_version = ">= 1.6.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "imported" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

output "resource_group_id" {
  value = azurerm_resource_group.imported.id
}

output "resource_group_name" {
  value = azurerm_resource_group.imported.name
}
