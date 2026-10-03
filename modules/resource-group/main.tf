resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location

  tags = {
    environment = var.environment
    managed_by  = "terraform"
    owner       = "devops"
  }
}

resource "azurerm_management_lock" "this" {
  name       = "${var.name}-lock"
  scope      = azurerm_resource_group.this.id
  lock_level = "CanNotDelete"
  notes      = "Prevent accidental deletion of the resource group and its resources."
}

terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}