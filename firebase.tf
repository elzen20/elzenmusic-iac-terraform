

resource "google_firebase_web_app" "default" {
    provider = google-beta
    api_key_id      = var.api_key_id_firebase
    deletion_policy = "DELETE"
    display_name    = var.elzenmusic-project
    project         = var.elzen-project-firebase
}

