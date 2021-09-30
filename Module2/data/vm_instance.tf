resource "google_compute_instance" "default" {
    name = "test"
    machine_type = "f1-micro"
    zone = "us-central1-a"

    boot_disk {
        initialize_params {
            image = data.google_compute_image.debian_9.name

        }
    }

    network_interface {
        network = "default"
    }
}