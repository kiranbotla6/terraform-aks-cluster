resource "azurerm_kubernetes_cluster" "this" {
  name                = var.aks_cluster_name
  location            = var.location
  kubernetes_version  = var.kubernetes_version
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name            = "system"
    node_count      = var.node_count
    vm_size         = var.vm_size
    vnet_subnet_id  = var.subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    network_plugin     = "azure"                            # Uses Azure CNI (L3 IP address management from VNet)
    network_policy     = "azure"                            # Enables native NSG support for Kubernetes pods (calico is an option)
    dns_service_ip     = var.dns_service_ip                 # IP inside the Service CIDR used by CoreDNS (not conflict with service_cidr, vnet, docker_bridge)
    service_cidr       = var.service_cidr                   # Internal IP space for Kubernetes services (ClusterIP) [Must not overlap with VNet CIDR or Docker bridge]
   #docker_bridge_cidr = var.docker_bridge_cidr             # Depricated-Internal Docker bridge on nodes (Also must be unique; avoid overlapping with anything else.)
  }

  tags = var.tags
}

# Now call the node_pool module
module "node_pool" {
  source                = "../node_pool"
  node_pool_name        = "mypool"
  aks_cluster_id        = azurerm_kubernetes_cluster.this.id
  vm_size               = var.vm_size
  node_count            = var.node_pool_count
  subnet_id             = var.subnet_id    # from your vnet module or variable
  tags                  = var.tags
  enable_auto_scaling   = var.enable_auto_scaling
  min_count             = var.min_count
  max_count             = var.max_count
}
