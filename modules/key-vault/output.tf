output "key_vault_id" {
  description = "Key Vault ID"
  value       = azurerm_key_vault.this.id
}

output "key_vault_name" {
  description = "Key Vault name"
  value       = azurerm_key_vault.this.name
}

output "key_vault_uri" {
  description = "Key Vault URI"
  value       = azurerm_key_vault.this.vault_uri
}

output "key_vault_tenant_id" {
  description = "Key Vault tenant ID"
  value       = azurerm_key_vault.this.tenant_id
}

output "key_vault_resource_group_name" {
  description = "Resource Group containing Key Vault"
  value       = azurerm_key_vault.this.resource_group_name
}