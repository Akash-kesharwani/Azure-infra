module "rg" {
  source = "../../modules/azurerm_resource_group"
  rgs =var.rgs
}

module "aks" {
    depends_on = [ module.rg ]
    source = "../../modules/azurerm_cluster"
    akss = var.akss  
}

module "sql-server" {
  depends_on = [ module.rg ]
  source = "../../modules/azurerm_sql_server"
  sql_server = var.sql_server
}

module "sql-db" {
  depends_on = [ module.sql-server ]
  source = "../../modules/azurerm_sql_database"
  sql-db= var.sql-dbs
  
}
module "acr" {
  depends_on = [ module.rg ]
  source = "../../modules/azurerm_container_registry"
  acrs =  var.acrs
}