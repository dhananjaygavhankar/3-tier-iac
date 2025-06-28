terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.29.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "DoNotDeleteGroup"
    storage_account_name = "11donotdeletestorage1111"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    subscription_id      = "d471b3fd-4ab5-4021-bbbb-3f55ab2e7a83"

  }
}
provider "azurerm" {
  features {}
  subscription_id = "d471b3fd-4ab5-4021-bbbb-3f55ab2e7a83"
  tenant_id       = "fd169b0e-884e-4488-849b-7b44a4cf32e3"
  client_id       = "5be6a140-7f33-429f-b70e-7328f378b62f"
  client_secret   = "5p_8Q~w1ta18CiyL47xngeCqxeYowYgNXgjg0bIh"
}
