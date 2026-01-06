provider "vault" {
  address = "http://vault-internal.learntechnology.shop:8200"
  # address = "http://10.1.0.8:8200"
  token   = var.token
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG"
    storage_account_name = "rttfstatestorage"
    container_name       = "vault-secret-state"
    key                  = "dev.tfstate"

  }
}

provider "azurerm" {
  features {}
  subscription_id = "0aa6e6f6-6e44-47f7-b30d-2aa0dfd4e5f4"
}

variable "token" {}