resource "google_compute_instance" "maps" {
    name = var.gce_name_maps
    machine_type = var.gce_machine_type["dev"]
    zone = "us-central1-a"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }

    network_interface {
        network = "default"
    }
}

resource "google_project_iam_custom_role" "new-custom-role" {
  role_id     = "new_custom"
  title       = "DEV new Role"
  description = "Cloud new Jobs custom role"
  permissions = var.new_custom_permissions
}