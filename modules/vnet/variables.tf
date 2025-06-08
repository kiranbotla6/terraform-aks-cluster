variable "name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "location" {
  description = "Location for the VNet"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "address_space" {
  description = "CIDR block for the VNet"
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnets (name => CIDR)"
  type        = map(string)
}

variable "tags" {
  description = "Tags to apply to the VNet"
  type        = map(string)
  default     = {}
}
