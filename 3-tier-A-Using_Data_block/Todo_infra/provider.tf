terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.30.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "DoNotDeleteRg"
    storage_account_name = "121donotdeletestorage121"
    container_name       = "terraform.tfstate"
    key                  = "tfstate"
    subscription_id      = "5c83ee41-460c-400b-8120-13a218b61103"

  }
}
provider "azurerm" {
  features {}
  subscription_id = "5c83ee41-460c-400b-8120-13a218b61103"
  # tenant_id       = "-"
  # client_id       = "-"
  # client_secret   = "-"
}
