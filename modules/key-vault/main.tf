terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }
}

resource "azurerm_key_vault" "this" {
  name                = var.key_vault_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tenant_id = coalesce(var.tenant_id, data.azurerm_client_config.current.tenant_id)

  sku_name                    = var.sku_name
  rbac_authorization_enabled = false

  purge_protection_enabled = var.purge_protection_enabled

  soft_delete_retention_days = var.soft_delete_retention_days

  public_network_access_enabled = false

  network_acls {
    default_action = "Deny"
    bypass         = "AzureServices"
    ip_rules       = []
    virtual_network_subnet_ids = []
  }
}

resource "azurerm_log_analytics_workspace" "this" {
  name                = "${var.key_vault_name}-law"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_monitor_diagnostic_setting" "key_vault" {
  name                       = "${var.key_vault_name}-diag"
  target_resource_id         = azurerm_key_vault.this.id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.this.id

  enabled_log {
    category = "AuditEvent"
  }
}

resource "azurerm_private_endpoint" "this" {
  name                = "${var.key_vault_name}-pe"
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "${var.key_vault_name}-psc"
    private_connection_resource_id = azurerm_key_vault.this.id
    subresource_names              = ["vault"]
    is_manual_connection           = false
  }
}

data "azurerm_client_config" "current" {}