# rg_name = "rg-akas"
# location = "westus"
# aks_name = "aks-akas"
# aks_location = "westus"

# server_name = "sqlserverakash01"
# admin_login = "sql_username"
# admin_pass = "Password@123"
# db_name = "sql_db"
# acr_name = "appacrakash01"
# max-size = "2"

rgs = {
  rg1 = {
    location = "westus"   
  }
}

sql_server = {
  sqlserverakash01 = {
    location = "westus"
    version = "12.0"
    administrator_login = "sql_username"
    administrator_login_password = "Password@123"
    minimum_tls_version = "1.2"  
    resource_group_name = "rg1" 
  }
}

sql-dbs = {
  sql_db = {
    collation = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb = 2
    sku_name = "S0"
    enclave_type = "VBS"
    server_name = "sqlserverakash01"
    resource_group_name = "rg1"
    
  }
}
acrs = {
  appacrakash01 = {
      resource_group_name = "rg1"
      location = "westus"
      sku = "Premium"
  }
}


akss = {
   aks-akas = {
    location = "westus"
    resource_group_name = "rg1"
    dns_prefix = "exampleaks1"

    default_node_pool = {
        default = {
            node_count = 1
            vm_size = "Standard_D2as_v6"
        }
    }

    identity = {
        type = "SystemAssigned"
    }
  }
}