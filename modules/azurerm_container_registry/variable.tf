
variable "acrs" {
  type = map(object({
    resource_group_name = string
    location            = string
    sku                 = string
    admin_enabled       = bool
  }))

}
