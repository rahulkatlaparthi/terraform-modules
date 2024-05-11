// variable "create_resource_group" {
//   description = "Whether to create resource group and use it for all networking resources"
//   default     = false
//   type        = bool
// }

variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  default     = "example-resources"
  type        = string
}

variable "location" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default     = "West Europe"
  type        = string
}



