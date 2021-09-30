provider "google" {
    project = "academic-oasis-312313"
}

resource "google_service_account" "default" {
  account_id   = "created-by-terraform"
  display_name = "Terraform Demo Service Account"
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


  network_interface {
    network = "default"
  }
  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    #email = "created-by-terraform@academic-oasis-312313.iam.gserviceaccount.com"
    #depends_on = [google_service_account.default]

    #email  = google_service_account.default.self_link
    
    email  = google_service_account.default.email
    scopes = ["cloud-platform"]
  }
}
