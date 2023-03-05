
provider "google" {
    credentials = "${file("hogehoge.json")}"
    project = "serious-hold-305403"
    region = "us-central1"
}