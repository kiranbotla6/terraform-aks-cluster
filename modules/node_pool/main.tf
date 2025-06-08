resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                  = var.node_pool_name
  kubernetes_cluster_id = var.aks_cluster_id
  vm_size               = var.vm_size
  node_count            = var.node_count
  os_type               = var.os_type
  vnet_subnet_id        = var.subnet_id

  tags = var.tags

  enable_auto_scaling   = var.enable_auto_scaling
  min_count             = var.min_count
  max_count             = var.max_count
  upgrade_settings {
    drain_timeout_in_minutes      = 0
    max_surge                     = "10%"
    node_soak_duration_in_minutes = 0
  }
}
