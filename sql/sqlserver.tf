resource "azurerm_sql_server" "example" {
  name                         = var.name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  tags = {
    environment = var.environment
  }

  identity{
    type="UserAssigned"
    identity_ids=var.user_assigned_identity
      }
}