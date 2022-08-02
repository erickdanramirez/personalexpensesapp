resource "azurerm_resource_group" "speech" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_cognitive_account" "speech" {
  name                = var.cs_speech_name
  location            = azurerm_resource_group.speech.location
  resource_group_name = azurerm_resource_group.speech.name
  kind                = var.cs_speech_Kind

  sku_name = var.cs_speech_SKU

  tags = {
    env = "Dev"
  }
}