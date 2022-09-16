# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = var.mySubId
}

resource "azurerm_resource_group" "rg" { # 类型+id，注意第二个参数并不是Azure资源的名字
  name     = "RayTerraformRG"
  location = var.defaultLocation

  tags = {
    "Ray" = "1"
  }
}