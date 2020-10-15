variable "instance_name" {
    type = list(string)
}

variable "machine_type" {
    type = map
    default = {
    dev = "f1-micro"
    prod = "n1-standard-2"
    }
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