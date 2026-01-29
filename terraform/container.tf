resource "docker_container" "webapp" {
  name  = "webappss"
  image = docker_image.webapp.image_id

  ports {
    internal = 80
    external = 8071
  }

  restart = "always"
}
