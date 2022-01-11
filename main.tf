provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-dev" {
  name     = "grtest-dev-rg"
  location = "westus2"
  tags = {"Bill-To" = "Group Infrastructure - Hosting"}
}
resource "azurerm_resource_group" "rg-uat" {
  name     = "grtest-uat-rg"
  location = "westus2"
  tags = {"Bill-To" = "Group Infrastructure - Hosting"}
}