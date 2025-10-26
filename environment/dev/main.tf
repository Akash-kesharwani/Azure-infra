module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs_name = var.rg_name
  rgs_location = var.location
}

module "aks" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_cluster"
    aks_name = var.aks_name
    aks_location = var.aks_location
    aks_rg_name = var.rg_name
  
}

module "sql-server" {
  depends_on = [ module.rg ]
  source = "../../modules/azurerm_sql_server"
  server_name = var.server_name
  rg-name = var.rg_name
  location = var.location
  admin_login = var.admin_login
  admin_pass = var.admin_pass
}

module "sql-db" {
  depends_on = [ module.sql-server ]
  source = "../../modules/azurerm_sql_database"
  db_name = var.db_name
  server-id = module.sql-server.server_id
  max-size = var.max-size
  
}
module "acr" {
  depends_on = [ module.rg ]
  source = "../../modules/azurerm_container_registry"
  acr_name = var.acr_name
  rg_name = var.rg_name
  location = var.location


}