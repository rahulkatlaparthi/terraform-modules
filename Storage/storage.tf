resource "azurerm_storage_account" "example" {
  name                     = "storageaccountname"
  resource_group_name      = var.resource_group_name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}