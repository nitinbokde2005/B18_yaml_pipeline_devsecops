variable "location" {
  type    = string
  default = "South India"
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "resource_group_name" {
  type    = string
  default = "rg-prod-terraform"
}

variable "vnet_name" {
  type    = string
  default = "vnet-prod"
}

variable "vnet_address_space" {
  type = list(string)

  default = [
    "10.10.0.0/16"
  ]
}

variable "subnets" {
  type = map(string)

  default = {
    app     = "10.10.1.0/24"
    bastion = "10.10.2.0/27"
  }
}

variable "vm_name" {
  type    = string
  default = "vm-prod-01"
}

variable "vm_size" {
  type    = string
  default = "Standard_B2as_v2"
}

variable "admin_username" {
  type = string
}

variable "ssh_public_key" {
  description = "SSH public key used to access the VM"
  type        = string
}