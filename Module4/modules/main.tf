##Local Path##

module "gce_local" {
    source = "../gce"
}

/*

Terraform will recognize unprefixed github.com URLs and interpret them automatically as Git repository sources.

module "vpc" {
  source = "git::https://example.com/vpc"
}

The above address scheme will clone over HTTPS. To clone over SSH, use the following form:

module "vpc" {
  source = "git::https://example.com/vpc.git"
}


By default, Terraform will clone and use the default branch (referenced by HEAD) in the selected repository. You can override this using the ref argument:

module "vpc" {
  source = "git::https://example.com/vpc.git?ref=v1.2.0"
}

*/
##Passing values to arguments##

module "gcs_local" {
    source = "../gcs"
    project_id = "academic-oasis-312313"
    bucket_name = "test-1"
    bucket_location = "us-west1"
    bucket_class = "STANDARD"
}

## Fetching outputs from modules
output "bucket-url-local-module" {value = module.gcs_local.gs_link2}
