variable "name" {
  description = "Name of the Azure Resource Group"
  type        = string

  validation {
    condition     = length(var.name) >= 3
    error_message = "Resource group name must contain at least 3 characters."
  }
}

variable "location" {
  description = "Azure region where the Resource Group will be created"
  type        = string
}

variable "environment" {
  description = "Environment tag value for the Resource Group"
  type        = string
  default     = "prod"
}