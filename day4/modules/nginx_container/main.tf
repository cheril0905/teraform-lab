terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = "nginx:latest"

  ports {
    internal = 80
    external = var.container_port
  }
}