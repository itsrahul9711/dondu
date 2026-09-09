terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "4.70.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "jagga"
    storage_account_name = "dondu_storage"
    container_name = "tfstate"
    key = "Rahul.tfstate"
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
  name = "dondu_storage"
  location = "east us"
  resource_group_name = "jagga"
  account_replication_type = "LRS"
  account_tier = "Standard"

}
resource "azurerm_storage_container" "container_name" {
    depends_on = [ azurerm_storage_account.jatt ]
    name = "tfstate"
    storage_account_id = azurerm_storage_account.tfstate.id
    container_access_type = "private"
  
}

