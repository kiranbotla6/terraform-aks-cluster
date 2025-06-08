variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the AKS cluster"
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

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 0
}

variable "node_pool_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for the AKS nodes"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "subnet_id" {
  description = "The subnet ID where the AKS cluster should be deployed"
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

variable "tags" {
  type = map(string)
  default = {}
}

variable "enable_auto_scaling" {
  description = "Enable auto scaling for the node pool"
  type        = bool
  default     = true
}

variable "min_count" {
  description = "Minimum number of nodes if auto scaling enabled"
  type        = number
  default     = 1
}

variable "max_count" {
  description = "Maximum number of nodes if auto scaling enabled"
  type        = number
  default     = 3
}