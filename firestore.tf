resource "google_firestore_database" "default" {
    provider = google-beta
    project     = var.elzenmusic-project-firebase
    name        = "(default)"
    location_id = "nam5"
    type        = "FIRESTORE_NATIVE"
}

#check <<elzen-project-firebase>> in variables
# terraform import google_firestore_database.default projects/<<elzen-project-firebase>>/databases/"(default)"