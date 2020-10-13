#provider variables
variable "project_id" {default = "epam-terraform"}
variable "gcp_region" {default = "us-central1"}

#main variables
variable "image" { default = "ubuntu-os-cloud/ubuntu-1804-lts"}
variable "machine_type" { default = "n1-standard-1"}
variable "environment" {default = "prod"}
variable "zone" { default = "us-central1-a"}
