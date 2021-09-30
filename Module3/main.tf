resource "google_compute_instance" "default" {
    name = "test"
    machine_type = "f1-micro"
    zone = "us-central1-a"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        network = "default"
    }
}

output "instance_id" {value = google_compute_instance.default.instance_id}
output "name" {value = google_compute_instance.default.name}
output "internal_ip" {value = google_compute_instance.default.network_interface.0.network_ip}