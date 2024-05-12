resource "azurerm_app_service" "exampleappservice" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id   

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }
    identity{
    type="UserAssigned"
    identity_ids=var.user_assigned_identity
      }
  


}
