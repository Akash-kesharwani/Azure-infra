variable "akss" {
  type = map(object({
    location            = string
    resource_group_name = string
    dns_prefix          = string

    default_node_pool = map(object({
      node_count = number
      vm_size    = string
    }))
    identity = object({
      type = string
    }
      )
  }))

}
