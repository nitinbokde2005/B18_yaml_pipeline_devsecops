terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}

resource "azurerm_public_ip" "bastion" {
  name = var.public_ip_name

  location            = var.location
  resource_group_name = var.resource_group_name

  allocation_method = "Static"
  sku               = "Standard"
}

resource "azurerm_bastion_host" "this" {
  name = var.bastion_name

  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                 = "bastion-ip-config"
    subnet_id            = var.subnet_id
    public_ip_address_id = azurerm_public_ip.bastion.id
  }
}