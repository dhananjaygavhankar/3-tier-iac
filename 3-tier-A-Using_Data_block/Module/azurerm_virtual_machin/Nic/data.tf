data "azurerm_subnet" "subnet_data" {
  name                 = var.subnet_configs_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.resource_group_name
}

data "azurerm_public_ip" "vm_ip" {
  name                = var.vm_ip
  resource_group_name = var.resource_group_name
}

data "azurerm_network_security_group" "nsg_data" {
  name                = var.nsg_group
  resource_group_name = var.resource_group_name
}
