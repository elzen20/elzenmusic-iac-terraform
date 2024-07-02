
resource "google_app_engine_application" "default" {
    location_id = var.us_central
    auth_domain       = "gmail.com"
    database_type     = "CLOUD_DATASTORE_COMPATIBILITY"
    project           = var.elzenmusic-project
    serving_status    = "SERVING"
    feature_settings {
        split_health_checks = true
    }
}

resource "google_app_engine_application" "dev" {
  location_id       = var.us_central
  auth_domain       = "gmail.com"
  database_type     = "CLOUD_DATASTORE_COMPATIBILITY"
  project           = var.elzenmusic-dev-google
  serving_status    = "SERVING"
  feature_settings {
      split_health_checks = true
  }
}
