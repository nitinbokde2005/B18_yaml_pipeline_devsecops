variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "AzureBastionSubnet ID"
  type        = string
}

variable "bastion_name" {
  description = "Azure Bastion host name"
  type        = string
  default     = "bastion-prod"
}

variable "public_ip_name" {
  description = "Bastion Public IP name"
  type        = string
  default     = "pip-prod-bastion"
}