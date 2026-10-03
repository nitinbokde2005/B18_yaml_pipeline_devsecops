terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}

resource "azurerm_network_interface" "this" {
  name                = var.nic_name != null ? var.nic_name : "${var.vm_name}-nic"

  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "this" {
  name                = var.vm_name

  resource_group_name = var.resource_group_name
  location            = var.location

  size = var.vm_size

  admin_username = var.admin_username

  network_interface_ids = [
    azurerm_network_interface.this.id
  ]

  disable_password_authentication = true
  allow_extension_operations      = false

  admin_ssh_key {
    username   = var.admin_username
    public_key = var.ssh_public_key
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.os_disk_type
  }

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }
}