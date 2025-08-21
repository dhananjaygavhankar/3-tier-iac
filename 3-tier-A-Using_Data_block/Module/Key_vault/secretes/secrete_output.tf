output "secret_username"{
    value = azurerm_key_vault_secret.username.name
}

output "secret_password"{
    value = azurerm_key_vault_secret.password.name
}

output "secret_username_value"{
    value = azurerm_key_vault_secret.username.value
}

output "secret_password_value"{
    value = azurerm_key_vault_secret.password.value
}