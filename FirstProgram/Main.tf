terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 1.5.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "exa" {
  name     = "Jenkin_example-resource-group"
  location = "East US"
 }

