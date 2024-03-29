resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

module "datafactory" {
  source                    = "./modules/datafactory"
  datafactory_name          = var.datafactory_name
  resource_group_name       = var.resource_group_name
  resource_group_location   = var.resource_group_location
}

resource "azurerm_databricks_workspace" "databricks" {
  source                    = "./modules/databricks"
  databricks_name           = var.databricks_name
  resource_group_name       = var.resource_group_name
  resource_group_location   = var.resource_group_location
  sku                       = var.sku
}
