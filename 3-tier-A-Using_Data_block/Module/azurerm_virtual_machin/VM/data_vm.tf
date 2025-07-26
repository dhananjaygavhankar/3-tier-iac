data "azurerm_network_interface" "vm_nic" {
  name                = var.nic_name
  resource_group_name = var.resource_group_name
}

data "azurerm_key_vault" "key_vault" {
  name                = var.key_vault
  resource_group_name = var.resource_group_name
}
 
data "azurerm_key_vault_secret" "username" {
  # name         = var.username
  name         = "T0d000l0gin"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}
data "azurerm_key_vault_secret" "password" {
  # name         = var.password
  name         = "T0d000passw0rd"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}



