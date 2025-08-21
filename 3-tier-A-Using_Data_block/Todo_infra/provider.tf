terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "DoNotDeleteRg"
    storage_account_name = "donotdeletestorage555"
    container_name       = "tfstate"
    key                  = "3Tiertfstate"
    # subscription_id      = "5553a45f28c-3b05-4d1b-b640-21585be45e39999"

  }
}
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = false
    }
  }
  # subscription_id = "5553a45f28c-3b05-4d1b-b640-21585be45e39999"
  # tenant_id       = "-"
  # client_id       = "-"
  # client_secret   = "-"
}
