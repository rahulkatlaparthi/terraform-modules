// variable "create_resource_group" {
//   description = "Whether to create resource group and use it for all networking resources"
//   default     = false
//   type        = bool
// }

variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  type        = string
}

variable "location" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  type        = string
}



variable "storage_account_name" {
  description = "The name of the azure storage account"
  type        = string
}


variable "sku_name" {
  description = "The name of the azure storage account"
  type        = string
}




variable "account_kind" {
  description = "The type of storage account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2."
  type        = string
}




variable "skuname" {
  description = "The SKUs supported by Microsoft Azure Storage. Valid options are Premium_LRS, Premium_ZRS, Standard_GRS, Standard_GZRS, Standard_LRS, Standard_RAGRS, Standard_RAGZRS, Standard_ZRS"
  type        = string
}

variable "access_tier" {
  description = "Defines the access tier for BlobStorage and StorageV2 accounts. Valid options are Hot and Cool."
  type        = string
}

variable "account_tier" {
  
  type        = string
}

variable "account_replication_type" {
  
  type        = string
}

variable "min_tls_version" {
  description = "The minimum supported TLS version for the storage account"
  type        = string
}



variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}