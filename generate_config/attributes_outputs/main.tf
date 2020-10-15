#Creates instance with a single PD disk
resource "google_compute_instance" "default" {
name         = "test-vm"
machine_type = "f1-micro"
zone         = "us-central1-a"

boot_disk {
    initialize_params {
        image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
}

#puts instance in default VPC
network_interface {
    network = "default"
    access_config {

    }
}

service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
}

}

# https://www.terraform.io/docs/configuration/outputs.html
output "instance_id" {value = google_compute_instance.default.instance_id}
output "name" { value = google_compute_instance.default.name}
output "instance_details" { value = google_compute_instance.default}
