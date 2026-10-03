variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to associate with NAT Gateway"
  type        = string
}

variable "nat_gateway_name" {
  description = "NAT Gateway name"
  type        = string
  default     = "nat-prod"
}

variable "public_ip_name" {
  description = "Public IP name for NAT Gateway"
  type        = string
  default     = "pip-prod-nat"
}