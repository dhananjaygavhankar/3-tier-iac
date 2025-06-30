terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.29.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "-"
    storage_account_name = "-"
    container_name       = "-"
    key                  = "-"
    subscription_id      = "-"

  }
}
provider "azurerm" {
  features {}
  subscription_id = "-"
  tenant_id       = "-"
  client_id       = "-"
  client_secret   = "-"
}
