resource "azurerm_network_security_group" "main" {
  name                = var.nsg_group 
  location            = var.location
  resource_group_name = var.resource_group_name
}


resource "azurerm_network_security_rule" "main" {
  name                        = "For-SSH"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.main.name
}