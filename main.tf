provider "google" {
  project = "academic-oasis-312313"
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }
}