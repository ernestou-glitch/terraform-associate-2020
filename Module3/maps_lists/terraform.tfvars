gce_name_maps = "maps-test"

gce_machine_type = {
    dev = "f1-micro"
    prod = "n1-standard-2"
}

new_custom_permissions = ["cloudscheduler.jobs.create",
"cloudscheduler.jobs.get",
"cloudscheduler.jobs.list",
"cloudscheduler.jobs.update",
"cloudscheduler.locations.get",
"cloudscheduler.locations.list",
"cloudscheduler.jobs.fullView"]