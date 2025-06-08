output "name" {
  description = "The name of the created resource group"
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "The Azure region of the resource group"
  value       = azurerm_resource_group.this.location
}
