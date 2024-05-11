resource "azurerm_app_service" "exampleappservice" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id   

  site_config {
    linux_fx_version = "TOMCAT|9.0-java11"
  always_on              = true
  java_version           = "11"
  java_container         = "JAVA"
  java_container_version = "11"
  }
    identity{
    type="UserAssigned"
    identity_ids=[azurerm_user_assigned_identity.example.id]
  }
  


}
