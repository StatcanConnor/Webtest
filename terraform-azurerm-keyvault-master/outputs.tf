output "id" {
  value       = azurerm_key_vault.kv.id
  description = "The ID of the Key Vault."
}

output "name" {
  value       = azurerm_key_vault.kv.name
  description = "The Name of the Key Vault."
}

output "vault_uri" {
  value       = azurerm_key_vault.kv.vault_uri
  description = "The URI of the Key Vault, used for performing operations on keys and secrets."
}
