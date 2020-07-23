resource "azurerm_key_vault" "kv" {
  name                            = var.name
  location                        = var.location
  resource_group_name             = var.resource_group
  tenant_id                       = var.tenant
  enabled_for_deployment          = var.deployment
  enabled_for_template_deployment = var.template_deployment
  sku_name                        = "standard"
}

resource "azurerm_key_vault_access_policy" "kv-access" {
  key_vault_id = azurerm_key_vault.kv.id

  tenant_id = var.tenant
  object_id = var.ad_group

  secret_permissions = [
    "backup",
    "delete",
    "get",
    "list",
    "purge",
    "recover",
    "restore",
    "set",
  ]
}

resource "azurerm_monitor_diagnostic_setting" "kv-worksapce" {
  name                       = "log_analytics"
  target_resource_id         = azurerm_key_vault.kv.id
  log_analytics_workspace_id = var.log_analytics_workspace

  log {
    category = "AuditEvent"
    enabled  = true

    retention_policy {
      enabled = true
      days    = 90
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = true
      days    = 90
    }
  }
}

resource "azurerm_monitor_diagnostic_setting" "kv-storage" {
  name               = "stroage_account"
  target_resource_id = azurerm_key_vault.kv.id
  storage_account_id = var.storage_account

  log {
    category = "AuditEvent"
    enabled  = true

    retention_policy {
      enabled = true
      days    = 90
    }
  }

  metric {
    category = "AllMetrics"

    retention_policy {
      enabled = true
      days    = 90
    }
  }
}