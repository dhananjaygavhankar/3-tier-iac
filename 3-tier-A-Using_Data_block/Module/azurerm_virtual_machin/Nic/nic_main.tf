resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.nic_ip
    subnet_id                     = data.azurerm_subnet.subnet_data.id
    private_ip_address_allocation = "Dynamic"  # Or "Static"
 
    public_ip_address_id         = data.azurerm_public_ip.vm_ip.id # Optional if you want a Public IP
  }
}

resource "azurerm_network_interface_security_group_association" "nsg_association" {
  network_interface_id          = azurerm_network_interface.nic.id
  network_security_group_id     = data.azurerm_network_security_group.nsg_data.id
}