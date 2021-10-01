resource "google_compute_network" "vpc_network" {
  name                    = var.vpc_name
  auto_create_subnetworks = false
  mtu                     = 1460
}

resource "google_compute_subnetwork" "vpc_subnetwork" {
  name          = var.vpc_subnet_name
  ip_cidr_range = var.vpc_subnet_cidr
  region        = var.vpc_subnet_region
  network       = google_compute_network.vpc_network.id
}

resource "google_storage_bucket" "bucket" {
  name          = "${var.project_id}-${var.gcs_name}"
  location      = var.gcs_location
  storage_class = var.gcs_storage_class
}

resource "google_compute_instance" "default" {
  name         = "instance-1"
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
