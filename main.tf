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

resource "azurerm_resource_group" "dondu1" {
  name = "jagga1"
  location = "eastus"
}
