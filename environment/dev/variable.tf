
variable "rgs" {
  type = map(object({
    location = string
  }))
}


variable "sql_server" {
    type = map(object({
      location = string
      version =string
      resource_group_name = string
      administrator_login = string
      administrator_login_password = string
      minimum_tls_version = string
    }))
  
}


variable "sql-dbs" {
  type = map(object({
    collation = string
    license_type = string
    max_size_gb = number
    sku_name = string
    enclave_type = string
    server_name = string
    resource_group_name = string
  }))
}

variable "acrs" {
  type = map(object({
    resource_group_name = string
    location = string
    sku = string
    admin_enabled = optional(bool, false)
  }))
  
}

variable "akss" {
  type = map(object({
    location = string
    resource_group_name = string
    dns_prefix = string

    default_node_pool = map(object({
      node_count = number
      vm_size = string
    }))

    identity = object({
      type = string
    }
    )
  }))
  
}