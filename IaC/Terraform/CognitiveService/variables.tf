variable "cs_speech_name" {
  default = "psapp-cs-speech-account"
  description   = "Name of the cognitive service speech recognition"
}

variable "resource_group_name" {
  default       = "personalexpensesapp-rg"
  description   = "Prefix of the resource group name  is unique in your Azure subscription."
}
variable "resource_group_location" {
  default = "southcentralus"
  description   = "Location of the resource group."
}

variable "cs_speech_SKU" {
  default = "S0"
  description   = "SKU used fo the speech service"
}

variable "cs_speech_Kind" {
  default = "SpeechServices"
  description   = "cognitive service speech recognition kind"
}