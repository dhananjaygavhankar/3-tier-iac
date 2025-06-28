resource "azurerm_public_ip" "vm_ip" {
  name                = var.vm_ip
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Static"
} 