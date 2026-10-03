output "nat_gateway_id" {
  description = "NAT Gateway ID"
  value       = azurerm_nat_gateway.this.id
}

output "nat_gateway_name" {
  description = "NAT Gateway name"
  value       = azurerm_nat_gateway.this.name
}

output "nat_public_ip_id" {
  description = "NAT Gateway Public IP ID"
  value       = azurerm_public_ip.nat.id
}

output "nat_public_ip_address" {
  description = "NAT Gateway Public IP address"
  value       = azurerm_public_ip.nat.ip_address
}

output "subnet_nat_association_id" {
  description = "Subnet NAT Gateway association ID"
  value       = azurerm_subnet_nat_gateway_association.this.id
}