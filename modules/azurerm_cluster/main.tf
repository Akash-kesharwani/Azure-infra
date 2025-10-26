resource "azurerm_kubernetes_cluster" "example" {
  name                = var.aks_name
  location            = var.aks_location
  resource_group_name = var.aks_rg_name
  dns_prefix          = "exampleaks1"
  

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2as_v6"
  }

  identity {
    type = "SystemAssigned"
  }
}