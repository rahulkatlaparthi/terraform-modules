module "storage"{
    source="./storage"
    name                      = var.storage_account_name
    resource_group_name       = var.resource_group_name
    location                  = var.location
    access_tier= var.access_tier
    account_kind              = var.account_kind
    account_tier              = var.account_tier
    account_replication_type  = var.account_replication_type
    min_tls_version           = var.min_tls_version
    tags                      = var.tags
}