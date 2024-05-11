terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.89.0"
    }
  }
  //  backend "azurerm" {
  //    resource_group_name  = "example-resourcessssesSSSs"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
  //    storage_account_name = "rahkattak"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
  //    container_name       = "sample"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
  //    key                  = "terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  //  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

// module "resource_group"{
//   source = "./RG"
//   resource_group_name=var.resource_group_name
//   location=var.location
// }

// module "storage"{
//   source = "./Storage"
//   resource_group_name=var.resource_group_name
//   location=var.location
//   account_tier             = var.account_tier
//   account_replication_type = var.account_replication_type
//   depends_on=[module.resource_group]
// }

// module "umi"{
//   source = "./umi"
//   resource_group_name=var.resource_group_name
//   location=var.location

// }

// module "appserviceplan"{
//   source = "./appserviceplan"
//   resource_group_name=var.resource_group_name
//   location=var.location
//   tier=var.tier
//   size=var.size
// }

module "appservice"{
  source = "./appservice"
  resource_group_name=var.resource_group_name
  location=var.location
  app_service_name= var.app_service_name
  app_service_plan_id=module.appserviceplan.example.id
  user_assigned_identity=module.umi.example.id
}

