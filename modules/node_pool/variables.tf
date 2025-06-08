variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
}

variable "aks_cluster_id" {
  description = "The ID of the AKS cluster to attach this node pool"
  type        = string
}

variable "vm_size" {
  description = "The VM size of nodes in the node pool"
  type        = string
  default     = "Standard_DS2_v2"
}

variable "node_count" {
  description = "The number of nodes in the node pool"
  type        = number
  default     = 1
}

variable "os_type" {
  description = "The OS type of the nodes"
  type        = string
  default     = "Linux"
}

variable "subnet_id" {
  description = "The subnet ID for the node pool"
  type        = string
}

variable "tags" {
  description = "Tags to assign to the node pool resources"
  type        = map(string)
  default     = {}
}

variable "enable_auto_scaling" {
  description = "Enable auto scaling for the node pool"
  type        = bool
}

variable "min_count" {
  description = "Minimum number of nodes if auto scaling enabled"
  type        = number
}

variable "max_count" {
  description = "Maximum number of nodes if auto scaling enabled"
  type        = number
}
