
resource "azurerm_mssql_server" "todo" {
  name                         = var.server_name 
  resource_group_name          = var.resource_group_name 
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_admin_username
  administrator_login_password = var.sql_admin_password
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