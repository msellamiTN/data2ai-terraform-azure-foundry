output "resource_group_id" {
  description = "Resource Group resource ID."
  value       = azurerm_resource_group.lab.id
}

output "resource_group_name" {
  description = "Resource Group name."
  value       = azurerm_resource_group.lab.name
}

output "resource_group_location" {
  description = "Resource Group location."
  value       = azurerm_resource_group.lab.location
}

output "resource_group_tags" {
  description = "Resource Group tags."
  value       = azurerm_resource_group.lab.tags
}
