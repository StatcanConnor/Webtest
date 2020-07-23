module "" {
  source = "git::https://gitlab.k8s.cloud.statcan.ca/terraform-modules/terraform-azurerm-keyvault.git?ref=v1.1.1"

  name = "statcanarmdev"
  location = "canadacentral"
  resource_group = "keyvault-dev-rg"
  tenant = var.tenant
  ad_group = var.ad_group
  log_analytics_workspace = var.log_analytics_id
  storage_account = var.storage_account
}