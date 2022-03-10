terraform{
    required_providers {
      azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
      }
    }
}

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "aashima_dev" {
    name=var.rg_dev
    location =var.resource_group_location
  
}
resource "azurerm_app_service_plan" "tstapp" {
    name="rg_"
    resource_group_name= azurerm_resource_group.aashima_dev.name
    location= azurerm_resource_group.aashima_dev.location 
    sku{
        tier ="standard"
        size="s1"
    }
    
}
resource "azurerm_resource_group" "aashima_qa" {
    name=var.rg_qa
    location =var.resource_group_location
  
}
resource "azurerm_app_service_plan" "tstapp1" {
    name="rg_"
    resource_group_name= azurerm_resource_group.aashima_qa.name
    location= azurerm_resource_group.aashima_qa.location
    sku{
        tier ="standard"
        size="s1"
    }
    
}
resource "azurerm_storage_account" "aashima1" {
  name                     = "storageaccountaashima1"
  resource_group_name      = azurerm_resource_group.aashima_dev.name
  location                 = azurerm_resource_group.aashima_dev.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
