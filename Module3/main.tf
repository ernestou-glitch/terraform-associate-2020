resource "google_compute_instance" "default" {
    name = var.gce_name
    machine_type = "f1-micro"
    zone = var.gce_zone
    # zone = ${var.gce_zone}

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
            size = var.gce_disk_size
        }
    }

    network_interface {
        network = "default"
    }
}