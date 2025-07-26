terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.29.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "-"
  #   storage_account_name = "-"
  #   container_name       = "-"
  #   key                  = "-"
  #   subscription_id      = "-"

  # }
}
provider "azurerm" {
  features {}
  subscription_id = "5c83ee41-460c-400b-8120-13a218b61103"
  # tenant_id       = "-"
  # client_id       = "-"
  # client_secret   = "-"
}
