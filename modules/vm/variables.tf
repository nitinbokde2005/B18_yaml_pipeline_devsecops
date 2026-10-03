variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for VM NIC"
  type        = string
}

variable "vm_name" {
  description = "Virtual Machine name"
  type        = string
}

variable "vm_size" {
  description = "Virtual Machine SKU"
  type        = string
  default     = "Standard_B2as_v2"
}

variable "admin_username" {
  description = "Linux VM administrator username"
  type        = string
}

variable "ssh_public_key" {
  description = "SSH public key used to access the VM"
  type        = string

  sensitive = true
}

variable "vm_public_ip_enabled" {
  description = "Whether VM should have a public IP"
  type        = bool
  default     = false
}

variable "public_ip_name" {
  description = "VM Public IP name"
  type        = string
  default     = "pip-prod-vm"
}

variable "nic_name" {
  description = "VM Network Interface name"
  type        = string
  default     = null
}

variable "os_disk_type" {
  description = "Managed OS disk type"
  type        = string
  default     = "Premium_LRS"
}

variable "image_publisher" {
  description = "VM image publisher"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "VM image offer"
  type        = string
  default     = "ubuntu-24_04-lts"
}

variable "image_sku" {
  description = "VM image SKU"
  type        = string
  default     = "server"

}

variable "image_version" {
  description = "VM image version"
  type        = string
  default     = "latest"
}