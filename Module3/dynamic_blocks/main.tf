resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = google_compute_network.default.name

  allow {
    protocol = "icmp"
  }
/*
  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }
    allow {
    protocol = "tcp"
    ports    = ["1000"]
  }
    allow {
    protocol = "tcp"
    ports    = ["2000"]
  }

*/

dynamic "allow" {
    for_each = var.ports
    content {
        protocol ="tcp"
        ports = [allow.value]
    }
}
  source_tags = ["web"]
}


resource "google_compute_network" "default" {
  name = "test-network"
}

variable "ports" {

}
