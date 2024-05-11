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

module "storage"{
    source = "./terraform-azurerm-vnet"
    name                      = var.storage_account_name
    resource_group_name       = "example-resources"
    location                  = "West Europe"
    access_tier= var.access_tier
    account_kind              = "StorageV2"
    account_tier              = "Cool"
    account_replication_type  = "LRS"
    min_tls_version           = "TLS1_2"

}