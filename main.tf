module "resource_group" {
  source = "./modules/resource-group"

  name        = var.resource_group_name
  location    = var.location
  environment = var.environment
}

module "network" {
  source = "./modules/network"

  resource_group_name = module.resource_group.name
  location            = var.location

  vnet_name     = var.vnet_name
  address_space = var.vnet_address_space
  subnets       = var.subnets
  network_security_group_id = module.nsg.nsg_id
}

module "nsg" {
  source = "./modules/nsg"

  resource_group_name = module.resource_group.name
  location            = var.location

  subnet_id = module.network.app_subnet_id
}

module "nat" {
  source = "./modules/nat"

  resource_group_name = module.resource_group.name
  location            = var.location

  subnet_id = module.network.app_subnet_id
}

module "vm" {
  source = "./modules/vm"

  resource_group_name = module.resource_group.name
  location            = var.location

  subnet_id = module.network.app_subnet_id
  vm_name   = var.vm_name
  vm_size   = var.vm_size

  admin_username = var.admin_username
  ssh_public_key = var.ssh_public_key

  depends_on = [module.nsg, module.nat]
}

module "key_vault" {
  source = "./modules/key-vault"

  resource_group_name = module.resource_group.name
  location            = var.location
  subnet_id           = module.network.app_subnet_id
}

module "bastion" {
  source = "./modules/bastion"

  resource_group_name = module.resource_group.name
  location            = var.location

  subnet_id = module.network.bastion_subnet_id

  depends_on = [
    module.network
  ]
}