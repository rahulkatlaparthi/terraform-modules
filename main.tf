terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.89.0"
    }
  }
//   backend "azurerm" {
//     resource_group_name  = "dev"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
//     storage_account_name = "samplest56h"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
//     container_name       = "sample"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
//     key                  = "dev.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
//   }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

module "resource_group"{
  source = "./RG"
  resource_group_name=var.resource_group_name
  location=var.location
}

module "storage"{
  source = "./Storage"
  resource_group_name=module.resource_group.resource_group_id
  location=var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

