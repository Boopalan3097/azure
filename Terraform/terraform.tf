terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.88.0"
    }
  }
}

provider "azurerm" {
  skip_provider_registration = true
  subscription_id            = var.subscription_id
}