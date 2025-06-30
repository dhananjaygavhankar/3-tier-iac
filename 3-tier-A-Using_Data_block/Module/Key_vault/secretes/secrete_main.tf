resource "azurerm_key_vault_secret" "username" {
  name         = var.username
  value        = var.username_value
  # name         = "T0d0l0gin"
  # value        = "Dhananjayt0d0"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}

resource "azurerm_key_vault_secret" "password" {
  name         = var.password
  value        = var.password_value
  # name         = "T0d0passw0rd"
  # value        = "Str0ng@Passw0rd123"
  key_vault_id = data.azurerm_key_vault.key_vault.id
}

