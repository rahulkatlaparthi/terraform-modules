// resource "azurerm_storage_account" "storeacc" {
//   name                      = var.storage_account_name
//   resource_group_name       = var.resource_group_name
//   location                  = var.location
//   access_tier= var.access_tier
//   account_kind              = var.account_kind
//   account_tier              = var.account_tier
//   account_replication_type  = var.account_replication_type
//   enable_https_traffic_only = true
//   min_tls_version           = var.min_tls_version
//   tags                      = var.tags
//   identity{
//     type="UserAssigned"
//     identity_ids=[azurerm_user_assigned_identity.example.id]
//   }
//   depends_on=[azurerm_user_assigned_identity.example]
// }