provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name     = "grtestrgtf1630"
  location = "westus2"
  tags = {"Bill-To" = "Group Infrastructure - Hosting"}
}