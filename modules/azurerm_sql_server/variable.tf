variable "sql_server" {
  type = map(object(
    {
      location = string
      version = string
      resource_group_name = string
      administrator_login = string
      administrator_login_password = string
      minimum_tls_version = string

    }
  ))
  
}