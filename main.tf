terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.7.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "bc588450-6abe-4e21-bef3-660fce2116ca" # Required field
}

# Define the resource group
resource "azurerm_resource_group" "rg" {
  name     = "Fatima-RG"
  location = "East US"

  tags = {
    environment = "Dev"
    source = "Terraform"

  }
}