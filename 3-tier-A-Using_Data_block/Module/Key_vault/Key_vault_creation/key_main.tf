resource "azurerm_key_vault" "key_vault" {
  name                        = var.key_vault
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.todo.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.todo.tenant_id
    object_id = data.azurerm_client_config.todo.object_id

    key_permissions = [
      "Get",
      "List",
      "Create"
    ]

    secret_permissions = [
      "Get",
      "Set",
      "Delete",
      "List"
    ]

    storage_permissions = [
      "Get",
      "Set",
      "Delete",
      "List"
    ]
  }
}