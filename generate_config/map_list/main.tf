resource "google_compute_instance" "default" {
count = 3
name         = var.instance_name[count.index]
machine_type = var.machine_type["dev"]
zone         = var.instance_zone

boot_disk {
    initialize_params {
        image = var.instance_image
    }
}

network_interface {
    network = var.vpc_network
    access_config {

    }
}

}

output "name" { value = google_compute_instance.default.0.name}
output "ip" { value = google_compute_instance.default.*.network_interface.0.network_ip}
