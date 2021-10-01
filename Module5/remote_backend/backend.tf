terraform {
  backend "gcs" {
    bucket  = "remote-test"
    prefix  = "terraform/project1"
  }
}
