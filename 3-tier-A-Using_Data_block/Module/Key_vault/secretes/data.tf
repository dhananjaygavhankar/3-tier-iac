data "azurerm_key_vault" "key_vault" {
  name                = var.key_vault
  resource_group_name = var.resource_group_name
}