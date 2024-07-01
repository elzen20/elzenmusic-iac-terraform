resource "google_storage_bucket" "default" {
    location = "US"
    name = "elzenmusic"
    default_event_based_hold    = false
    enable_object_retention     = false
    force_destroy               = false
    labels                      = {}
    project                     = var.zelman-project
    public_access_prevention    = "inherited"
    requester_pays              = false
    rpo                         = "DEFAULT"
    storage_class               = "STANDARD"
    uniform_bucket_level_access = true
    soft_delete_policy {
        retention_duration_seconds = 604800
    }
}