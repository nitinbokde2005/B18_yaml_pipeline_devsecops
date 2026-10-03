output "vnet_id" {
  description = "VNet ID"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "VNet name"
  value       = azurerm_virtual_network.this.name
}

output "vnet_address_space" {
  description = "VNet address space"
  value       = azurerm_virtual_network.this.address_space
}

output "app_subnet_id" {
  description = "Application subnet ID"
  value       = azurerm_subnet.app.id
}

output "app_subnet_name" {
  description = "Application subnet name"
  value       = azurerm_subnet.app.name
}

output "app_subnet_address_prefix" {
  description = "Application subnet address prefix"
  value       = azurerm_subnet.app.address_prefixes
}

output "bastion_subnet_id" {
  description = "Azure Bastion subnet ID"
  value       = azurerm_subnet.bastion.id
}

output "bastion_subnet_name" {
  description = "Azure Bastion subnet name"
  value       = azurerm_subnet.bastion.name
}

output "bastion_subnet_address_prefix" {
  description = "Azure Bastion subnet address prefix"
  value       = azurerm_subnet.bastion.address_prefixes
}