output "secret_username1" {
  value = module.azurerm_key_vault_secret.secret_username
}
output "secret_password1" {
  value = module.azurerm_key_vault_secret.secret_password
}
