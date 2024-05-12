// variable "create_resource_group" {
//   description = "Whether to create resource group and use it for all networking resources"
//   default     = false
//   type        = bool
// }

variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
    default     = "example-resourcessssesSSSs"
  type        = string
}

variable "location" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
   default     = "West Europe"

  type        = string
}

variable "account_tier" {
  default     = "Standard"
  type        = string
}

variable "account_replication_type" {
  default     = "GRS"
  type        = string
}

variable "tier" {
  
  default     = "Standard"
  type        = string
}

variable "size" {
  
  default     = "S1"
  type        = string
}
variable "app_service_name" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default     = "appsericeahura"
  type        = string
}

variable "size" {
  
  default     = "/subscriptions/aa8cf85a-4850-4a20-a36c-298efad14547/resourceGroups/example-resourcessssesSSSs/providers/Microsoft.ManagedIdentity/userAssignedIdentities/example-identity"
  type        = string
}







