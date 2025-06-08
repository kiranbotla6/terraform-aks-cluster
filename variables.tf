variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "vnet_subnets" {
  description = "Subnets map (name => CIDR)"
  type        = map(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "kubernetes_version" {
  description = "AKS Kubernetes version"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "node_pool_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for the AKS nodes"
  type        = string
}

variable "service_cidr" {
  description = "CIDR for AKS service network"
  type        = string
}

variable "dns_service_ip" {
  description = "DNS service IP for AKS"
  type        = string
}
