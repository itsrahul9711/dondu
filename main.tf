terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.70.0"
    }
  }
  }


provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "dondu" {
  name = "jagga"
  location = "eastus"
}

resource "azurerm_storage_account" "jatt" {
    depends_on = [ azurerm_resource_group.dondu ]
  name = "dondustorage"
  location = "east us"
  resource_group_name = "jagga"
  account_replication_type = "LRS"
  account_tier = "Standard"

}
