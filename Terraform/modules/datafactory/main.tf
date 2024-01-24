resource "azurerm_data_factory" "datafactory" {
  name                = var.datafactory_name
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location
}