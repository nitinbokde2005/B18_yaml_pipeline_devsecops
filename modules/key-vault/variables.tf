variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the private endpoint"
  type        = string
  default     = null
}

variable "key_vault_name" {
  description = "Key Vault name"
  type        = string
  default     = "kv-prod-terraform-123456"
}

variable "tenant_id" {
  description = "Microsoft Entra tenant ID"
  type        = string
  default     = null
}

variable "sku_name" {
  description = "Key Vault SKU"
  type        = string
  default     = "standard"

  validation {
    condition     = contains(["standard", "premium"], var.sku_name)
    error_message = "SKU name must be either standard or premium."
  }
}

variable "soft_delete_retention_days" {
  description = "Number of days for Key Vault soft delete retention"
  type        = number
  default     = 90
}

variable "purge_protection_enabled" {
  description = "Enable purge protection"
  type        = bool
  default     = true
}

variable "public_network_access_enabled" {
  description = "Enable public network access"
  type        = bool
  default     = false
}