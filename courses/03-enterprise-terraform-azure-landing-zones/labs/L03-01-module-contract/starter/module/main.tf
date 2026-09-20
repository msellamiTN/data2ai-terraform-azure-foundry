resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
  tags     = var.tags
}

variable "name" {
  type = string

  validation {
    condition     = length(var.name) >= 3
    error_message = "name must contain at least 3 characters."
  }
}

variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
}

output "id" {
  value = azurerm_resource_group.this.id
}
