output "resource_group_id" {
  value = azurerm_resource_group.lab.id
}

output "storage_account_id" {
  value = azurerm_storage_account.state_demo.id
}

output "state_addresses" {
  value = [
    "azurerm_resource_group.lab",
    "azurerm_storage_account.state_demo"
  ]
}
