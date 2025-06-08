
## Resource group module

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

## Vnet module

module "vnet" {
  source              = "./modules/vnet"
  name                = var.vnet_name
  location            = var.location
  resource_group_name = module.resource_group.name
  address_space       = var.vnet_address_space
  subnets             = var.vnet_subnets
  tags                = var.tags
}

## AKS cluster starts here

module "aks" {
  source              = "./modules/aks"
  aks_cluster_name    = var.aks_cluster_name
  resource_group_name = module.resource_group.name
  location            = var.location
  kubernetes_version  = var.kubernetes_version
  dns_prefix          = var.dns_prefix
  dns_service_ip      = var.dns_service_ip
  service_cidr       = var.service_cidr
  node_count          = var.node_pool_count
  vm_size             = var.vm_size
  subnet_id           = module.vnet.subnet_ids["aks"]
  tags                = var.tags
}

