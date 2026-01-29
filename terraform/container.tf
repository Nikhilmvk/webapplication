resource "docker_container" "webapp" {
  name  = "webapp_v2"
  image = docker_image.webapp.image_id

  ports {
    internal = 80
    external = 8073
  }

  restart = "always"
}
