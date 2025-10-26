resource "azurerm_resource_group" "rg" {
  name     = var.rgs_name
  location = var.rgs_location
}