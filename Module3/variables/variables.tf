variable "gce_name" {

}

variable "gce_zone" {
    type = string
    default = "us-central1-b"
}

variable "gce_disk_size" {
    type = number
    description = "Size for the primary disk of the VM"
}

variable "machine_type" {
    
}
