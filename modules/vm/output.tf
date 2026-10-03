output "vm_id" {
  description = "Virtual Machine ID"
  value       = azurerm_linux_virtual_machine.this.id
}

output "vm_name" {
  description = "Virtual Machine name"
  value       = azurerm_linux_virtual_machine.this.name
}

output "vm_size" {
  description = "Virtual Machine size"
  value       = azurerm_linux_virtual_machine.this.size
}

output "vm_private_ip" {
  description = "Virtual Machine private IP address"
  value       = azurerm_network_interface.this.private_ip_address
}

output "vm_public_ip" {
  description = "Virtual Machine public IP address"
  value       = null
}

output "nic_id" {
  description = "Network Interface ID"
  value       = azurerm_network_interface.this.id
}

output "nic_name" {
  description = "Network Interface name"
  value       = azurerm_network_interface.this.name
}

output "public_ip_id" {
  description = "VM Public IP ID"
  value       = null
}