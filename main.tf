resource "docker_image" "nginx" {
  name = "nginx:latest"
}


resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginx-container-01"
  ports {
    internal = 80
    external = 1234
  }
}
