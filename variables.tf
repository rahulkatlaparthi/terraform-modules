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

variable "user_assigned_identity" {
  

  type        = list(string)
}
variable "name" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default="sqlnamerah78"
  type        = string
}

variable "version" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default="12"
  type        = string
}



variable "administrator_login" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default="rahullogin"
  type        = string
}

variable "administrator_login_password" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default="Rahul@69"
  type        = string
}

variable "environment" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default="dev"
  type        = string
}







