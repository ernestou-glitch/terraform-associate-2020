data "google_compute_image" "debian_9" {
  family  = "debian-9"
  project = "debian-cloud"
}


data "google_compute_instance" "test_server" {
  name = google_compute_instance.default.name
  zone = google_compute_instance.default.zone
}

output "instance_id" { value = data.google_compute_instance.test_server.instance_id}