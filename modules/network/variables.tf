variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)

  validation {
    condition     = length(var.address_space) > 0
    error_message = "At least one VNet address space must be provided."
  }
}

variable "subnets" {
  description = "Map of subnet names and CIDR ranges"
  type        = map(string)

  validation {
    condition = (
      contains(keys(var.subnets), "app") &&
      contains(keys(var.subnets), "bastion")
    )

    error_message = "Subnets must contain both 'app' and 'bastion' keys."
  }
}

variable "network_security_group_id" {
  description = "ID of the NSG attached to the subnets"
  type        = string
  default     = null
}