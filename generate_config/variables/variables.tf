variable "instance_name" {
    type = string
}

variable "machine_type" {
    type = string
}

variable "instance_zone" {
    type = string
}

variable "instance_image" {
    type = string
}

variable "vpc_network" {
    type = string
}

instance_name = "webserver"
machine_type = "f1-micro"
instance_zone = "us-central1-a"
instance_image = "ubuntu-os-cloud/ubuntu-1804-lts"
vpc_network = "default"