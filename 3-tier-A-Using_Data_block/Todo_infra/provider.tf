


#============== KINDLY RUN BELLOW COMMAND========== 
# $env:ARM_SUBSCRIPTION_ID = (az account show --query id -o tsv)

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
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  # subscription_id = data.azurerm_client_config.current.subscription_id
}


data "azurerm_client_config" "current" {}

output "Output_subscription_id" {
  value = data.azurerm_client_config.current.subscription_id
}

# variable "Output_subscription_id" {
#   description = "The subscription ID to use for the AzureRM provider"
#   type        = string
# }


