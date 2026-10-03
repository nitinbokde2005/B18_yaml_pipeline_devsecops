terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "stterraformstate1234567"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}
