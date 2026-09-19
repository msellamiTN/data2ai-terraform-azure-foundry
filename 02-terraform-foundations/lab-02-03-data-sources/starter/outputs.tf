output "discovered_resource_group_id" {
  value = data.azurerm_resource_group.target.id
}

output "discovered_resource_group_location" {
  value = data.azurerm_resource_group.target.location
}

output "storage_account_id" {
  value = azurerm_storage_account.lab.id
}

output "storage_account_name" {
  value = azurerm_storage_account.lab.name
}
