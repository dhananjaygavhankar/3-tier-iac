resource "azurerm_subnet" "subnets" {
  name = var.subnet_configs_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
    address_prefixes = var.subnet_address_prefixes
}

