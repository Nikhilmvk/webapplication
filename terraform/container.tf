resource "docker_container" "webapp" {
  name  = "webapp_v3"
  image = docker_image.webapp.image_id

  ports {
    internal = 80
    external = 8072
  }

  restart = "always"
}
