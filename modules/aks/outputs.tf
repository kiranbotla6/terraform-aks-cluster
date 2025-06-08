output "kube_config" {
  value     = azurerm_kubernetes_cluster.this.kube_config
  sensitive = true
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.this.name
}

output "aks_id" {
  value = azurerm_kubernetes_cluster.this.id
}
