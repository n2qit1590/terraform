
provider "google" {
    credentials = "${file("../serious-hold-305403-8b614ac9bf82.json")}"
    project = "serious-hold-305403"
    region = "us-central1"
}