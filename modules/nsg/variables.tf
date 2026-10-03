variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where NSG will be associated"
  type        = string
}

variable "nsg_name" {
  description = "Network Security Group name"
  type        = string
  default     = "nsg-prod-app"
}

variable "security_rules" {
  description = "Map of NSG security rules"
  type = map(object({
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))

  default = {}
}