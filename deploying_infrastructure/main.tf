#GCP Static IP
resource "google_compute_address" "static" {
  name = "jenkins-ipv4-address"
}

resource "google_compute_instance" "default" {
name         = "jenkins-terraform-vm"
machine_type = "${var.machine_type}"
zone         = "${var.zone}"

can_ip_forward = false
description = "This is our Virtual Machine with Jenkis to do a CI/CD pipeline"
    tags = ["allow-http-tag","allow-https-tag"] #FIREWALL tags

boot_disk {
    initialize_params {
        image = "${var.image}"
        size = "20"
    }
}

network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.static.address #Reference to static IP resource IP address https://www.terraform.io/docs/providers/google/r/compute_address.html#address
    }
  }


service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
}

depends_on = [google_compute_address.static]

}
