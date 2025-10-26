resource "azurerm_mssql_database" "sql-db" {
  name         = var.db_name
  server_id    = var.server-id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = var.max-size
  sku_name     = "S0"
  enclave_type = "VBS"
}
