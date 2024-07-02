

resource "google_firebase_project" "default" {
    provider = google-beta
    project        = var.elzenmusic-project-firebase
}

resource "google_firebase_web_app" "default" {
    provider = google-beta
    api_key_id      = var.api_key_id_firebase
    deletion_policy = "DELETE"
    display_name    = var.elzenmusic-project
    project         = var.elzenmusic-project-firebase
}


resource "google_firebase_project" "dev" {
    provider = google-beta
    project        = var.elzenmusic-dev-firebase
}

resource "google_firebase_web_app" "dev" {
    provider = google-beta
    deletion_policy = "DELETE"
    display_name    = var.elzenmusic-dev-firebase
    project         = var.elzenmusic-dev-firebase
}