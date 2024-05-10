// resource "azurerm_app_service_plan" "exampleappserviceplan" {
//   name                = var.app_service_plan
//   location            = var.location
//   resource_group_name = var.resource_group_name
//   kind                = var.app_service_plan_kind
//   reserved            = true

//   sku {
//     tier = var.app_service_plan_tier
//     size = var.app_service_plan_size
//   }
//   depends_on=[azurerm_user_assigned_identity.example]
// }
