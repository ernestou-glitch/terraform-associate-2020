module "project-services" {
  source  = "terraform-google-modules/project-factory/google//modules/project_services"
  version = "10.1.1"

  project_id = "academic-oasis-312313"

  activate_apis = [
    "compute.googleapis.com",
    "iam.googleapis.com",
    "bigquery.googleapis.com"
  ]
}

# https://registry.terraform.io/modules/terraform-google-modules/project-factory/google/latest/submodules/project_services