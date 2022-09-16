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

resource "azurerm_resource_group" "rg" { # 资源类型+资源local名称，注意local名称只用于Terraform本地使用，跟Azure没关系
  name     = "RayTerraformRG"
  location = var.defaultLocation

  tags = {
    "Ray" = "1"
  }
}
