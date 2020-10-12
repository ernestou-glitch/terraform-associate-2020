# Default provider configuration for GCP project
# https://www.terraform.io/docs/configuration/providers.html
provider "google" {
  project = "terraform"
  region  = "us-central1"
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "f1-micro"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

# Using multiple GCP providers in same configuration file
provider "google" {
  alias   = "project-2"
  project = "terraform-2"
  region  = "us-central1"
}

resource "google_compute_instance" "default-1" {
  provider     = google.project-2
  name         = "test"
  machine_type = "f1-micro"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
