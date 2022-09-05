terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker" # registry.terraform.io/kreuzwerker/docker
      version = ">= 2.13.0"
    }
  }
}

provider "docker" {
  host    = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  # name  = "tutorial"
  name = var.container_name # 使用Input Variables
  ports {
    internal = 80
    external = 8000
  }
}
