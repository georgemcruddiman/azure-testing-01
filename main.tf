provider "azurerm" {
  features {}
}

#development deployment
resource "azurerm_resource_group" "rg-dev" {
  name     = "grtest-dev-rg"
  location = "westus2"
  tags = {"Bill-To" = "Group Infrastructure - Hosting"}
}

resource "azurerm_log_analytics_workspace" "law-dev" {
  name = "grtest-dev-law"
  location = "westus2"
  resource_group_name = "azurerm_resource_group.rg-dev.name"
  tags = {"Bill-To" = "Group Infrastructure - Hosting"}
}

resource "azurerm_application_insights" "insights-dev" {
  name = "grtest-dev-app-insights"
  location = "westus2"
  resource_group_name = "azurerm_resource_group.rg-dev.name"
  workspace_id = "azurerm_log_analytics_workspace.law-dev.name"
  tags = {"Bill-To" = "Group Infrastructure - Hosting"}
}