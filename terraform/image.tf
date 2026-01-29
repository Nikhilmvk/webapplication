resource "docker_image" "webapp" {
  name = "webapplication:latest"

  build {
    context    = ".."
    dockerfile = "Dockerfile"
  }
}
