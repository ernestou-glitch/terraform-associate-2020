resource "google_compute_instance" "default" {
#count = 4
count = length(var.instance_name)
name         = var.instance_name[count.index]
/*
count = 1000
name = "server-${count.index+1}"
*/
machine_type = var.machine_type
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
output "first_instance_name" { value = google_compute_instance.default.0.name}
output "all_instance_names" { value = google_compute_instance.default.*.name}
