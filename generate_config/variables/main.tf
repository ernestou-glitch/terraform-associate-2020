resource "google_compute_instance" "default" {
name         = "${var.instance_name}-${var.instance_zone}"
machine_type = "${var.machine_type}"
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
