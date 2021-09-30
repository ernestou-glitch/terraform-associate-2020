provider "google" {
  project = "academic-oasis-312313"
}

resource "google_compute_instance" "default" {
  name         = "test"
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

  provisioner "local-exec" {
    command = "echo This command is executed locally"
  }

  /*
provisioner "remote-exec" {
    inline = [
        "sudo apt-get install -y nginx21.12"
        "sudo systemctl start nginx"
    ]

    connection {
        type = "ssh"
        user = "admin"
        password = "admin"
        host = google_compute_instance.default.network_interface.0.network_ip
    }
}
*/

}