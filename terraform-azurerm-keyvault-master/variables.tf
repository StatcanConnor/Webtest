variable "location" {
  description = "The Azure region where the resources will be created."
}

variable "resource_group" {
  description = "The name of the resource group in which resources will be created."
}

variable "name" {
  description = "Specifies the name of the Key Vault."
}

variable "tenant" {
  description = "The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault."
}

variable "ad_group" {
  description = "The object ID a security group in the Azure Active Directory tenant for the vault."
}

variable "log_analytics_workspace" {
  description = "Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent."
}

variable "storage_account" {
  description = "Specifies the storage account to e used to send the logs to."
}

variable "deployment" {
  description = "Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault."
  default     = false
}

variable "template_deployment" {
  description = "Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault."
  default     = false
}