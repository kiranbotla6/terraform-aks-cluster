data "azurerm_network_security_group" "existing_aks_nsg" {
  name                = "aks-nsg"
  resource_group_name = "rg-aks-dev"
}