resource "rafay_project" "tfdemoproject1" {
  metadata {
    name        = "tfdemoproject1"
    description = "terraform project"
  }
  spec {
    default = false
  }
}