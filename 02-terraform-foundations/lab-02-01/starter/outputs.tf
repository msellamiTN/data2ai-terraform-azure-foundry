output "resource_group_id" {
  description = "Resource group resource ID."
  value       = azurerm_resource_group.lab.id
}

output "resource_group_name" {
  value = azurerm_resource_group.lab.name
}
