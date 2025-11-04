data "azurerm_mssql_server" "server-data" {
    for_each = var.sql-db
  name                = each.value.server_name
  resource_group_name = each.value.resource_group_name
}