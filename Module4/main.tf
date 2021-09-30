resource "google_storage_bucket" "bucket-1" {
    name = "${var.project_id}-${var.bucket_name}"
    location = var.bucket_location
    storage_class = var.bucket_class
  
    versioning {
        enabled = true
    }
}

output "gs_link2" {
  value = "${google_storage_bucket.bucket-1.url}"
}