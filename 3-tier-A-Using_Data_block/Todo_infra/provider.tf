terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.29.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "_______" # add details
    storage_account_name = "_______" # add details
    container_name       = "_______" # add details
    key                  = "_______" # add details
    subscription_id      = "_______" # add details

  }
}
provider "azurerm" {
  features {}
  subscription_id = "_______" # add details
  tenant_id       = "_______" # add details
  client_id       = "_______" # add details
  client_secret   = "_______" # add details
}
