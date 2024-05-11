variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"

  type        = string
}

variable "location" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"

  type        = string
}

variable "app_service_name" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"

  type        = string
}

variable "app_service_plan_id " {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"

  type        = string
}


