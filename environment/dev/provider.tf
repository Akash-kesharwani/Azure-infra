terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.38.1"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "b3e9b690-1f69-4cae-899a-6a1c65b2db91"
}