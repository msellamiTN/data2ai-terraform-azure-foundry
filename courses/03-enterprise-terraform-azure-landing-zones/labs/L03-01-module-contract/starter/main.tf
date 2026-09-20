terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source = "./module"

  name     = var.name
  location = var.location

  tags = {
    Company     = "DATA2AI"
    Academy     = "DATA2AI-Academy"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

variable "name" {
  type        = string
  description = "Resource group name."
}

variable "location" {
  type        = string
  description = "Azure region."
  default     = "westeurope"
}

variable "environment" {
  type        = string
  description = "Environment identifier."

  validation {
    condition     = contains(["dev", "test", "prod"], var.environment)
    error_message = "environment must be dev, test or prod."
  }
}

output "resource_group_id" {
  value = module.resource_group.id
}
