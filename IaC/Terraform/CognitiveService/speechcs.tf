resource "azurerm_resource_group" "example" {
  name     = "personalexpensesapp-rg"
  location = "South Central"
}

resource "azurerm_cognitive_account" "example" {
  name                = "psapp-cs-speech-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "Speech"

  sku_name = "S0"

  tags = {
    env = "Dev"
  }
}