output "node_pool_id" {
  description = "ID of the created node pool"
  value       = azurerm_kubernetes_cluster_node_pool.this.id
}

output "node_pool_name" {
  description = "Name of the created node pool"
  value       = azurerm_kubernetes_cluster_node_pool.this.name
}
