resource "azurerm_virtual_network" "virtual_network" {
    for_each = var.vnets
  name                = each.value.virtual_network_name
  address_space       = each.value.address_space
  location            = each.value.virtual_network_location
  resource_group_name = each.value.resource_group_name
}