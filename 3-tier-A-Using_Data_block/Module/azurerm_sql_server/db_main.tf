
resource "azurerm_mssql_server" "todo" {
  name                         = var.server_name 
  resource_group_name          = var.resource_group_name 
  location                     = var.location
  version                      = "12.0"
  administrator_login          = data.azurerm_key_vault_secret.username.name
  administrator_login_password = data.azurerm_key_vault_secret.password.name
  # admin_username = data.azurerm_key_vault_secret.username.name
  #   admin_password = data.azurerm_key_vault_secret.password.name
}


resource "azurerm_mssql_database" "todo_db" {
  name         = var.todo_db
  server_id    = azurerm_mssql_server.todo.id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = 2
  sku_name     = "S0"
  enclave_type = "VBS"
  
}