resource "azurerm_resource_group" "rg" {
  name     = local.rg_name
  location = local.location
}

output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "rg_location" {
  value = azurerm_resource_group.rg.location
}