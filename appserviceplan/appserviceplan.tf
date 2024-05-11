resource "azurerm_app_service_plan" "example" {
  name                = "api-appserviceplan-pro"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku {
    tier = "Standard"
    size = "S1"
  }
}