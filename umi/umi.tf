
resource "azurerm_user_assigned_identity" "example" {
  name="example-identity"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  
}

output "appserviceplanid" {
    value = "${azurerm_user_assigned_identity.example.id}"
}