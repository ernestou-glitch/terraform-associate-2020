resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = google_compute_network.default.name
/*
  allow {
    protocol = "icmp"
  }

  allow {
      protocol ="tcp"
  }
*/

dynamic "allow" {
    for_each = var.protocol
    content {
        protocol = allow.value
    }
}
  source_tags = ["web"]
}

resource "google_compute_network" "default" {
  name = "terraform-network"
}

variable "protocol" { 
    type = list(string)
    default = ["tcp", "icmp"]
}
