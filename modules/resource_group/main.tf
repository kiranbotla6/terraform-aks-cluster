resource "azurerm_resource_group" "this" {
  name     = var.name
  location = var.location
  lifecycle {
    ignore_changes = [tags["owner"]]
  }
}
