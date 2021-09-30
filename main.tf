resource "google_compute_instance" "default" {
name         = "first"
machine_type = var.environment == "production" ? var.machine_type : var.machine_type_dev 
# IF CONDITION ? TRUE : FALSE
zone         = var.zone

boot_disk {
    initialize_params {
        image = var.image
    }
}
network_interface {
    network = "default"
}
}
output "machine_type" { value = google_compute_instance.default.machine_type}