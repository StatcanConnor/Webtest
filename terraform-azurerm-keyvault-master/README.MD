# Azure KeyVault for Generic Secrets.
**Current Version:** v1.1.1

Creates a KeyVault for secrets.  
    - Enables Diagnostics for a storage account
      and log analytics.  
    - Sets AD Group with full ACL permission on Secrets.
 
Examples can be found [here](examples/).  
  
## Requirements

- Log Analytics Workspace

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ad\_group | The object ID a security group in the Azure Active Directory tenant for the vault. | string | n/a | yes |
| default\_action | The Default Action to use when no rules match from ip_rules / virtual_network_subnet_ids. | string | `"Deny"` | no |
| deployment | Boolean flag to specify whether Azure Virtual Machines are permitted to retrieve certificates stored as secrets from the key vault. | string | `"false"` | no |
| location | The Azure region where the resources will be created. | string | n/a | yes |
| log\_analytics\_workspace | Specifies the ID of a Log Analytics Workspace where Diagnostics Data should be sent. | string | n/a | yes |
| name | Specifies the name of the Key Vault. | string | n/a | yes |
| resource\_group | The name of the resource group in which resources will be created. | string | n/a | yes |
| storage\_account | Specifies the storage account to e used to send the logs to. | string | n/a | yes |
| template\_deployment | Boolean flag to specify whether Azure Resource Manager is permitted to retrieve secrets from the key vault. | string | `"false"` | no |
| tenant | The Azure Active Directory tenant ID that should be used for authenticating requests to the key vault. | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the Key Vault. |
| name | The Name of the Key Vault. |
| vault\_uri | The URI of the Key Vault, used for performing operations on keys and secrets. |

