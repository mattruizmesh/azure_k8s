resource "azurerm_kubernetes_cluster" "aks" {
  name                = "mattaksdev"
  location            = local.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "mattaksdev"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Dev"
    Project     = "study"
    Customer    = "Mesh"
  }
}