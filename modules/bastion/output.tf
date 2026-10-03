output "bastion_id" {
  description = "Azure Bastion ID"
  value       = azurerm_bastion_host.this.id
}

output "bastion_name" {
  description = "Azure Bastion name"
  value       = azurerm_bastion_host.this.name
}

output "bastion_public_ip_id" {
  description = "Bastion Public IP ID"
  value       = azurerm_public_ip.bastion.id
}

output "bastion_public_ip_address" {
  description = "Bastion Public IP address"
  value       = azurerm_public_ip.bastion.ip_address
}