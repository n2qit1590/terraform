module "storage" {
  source = "git::ssh://username@example.com/storage.git"
}


variable "instance_zone" {
  type = string
  default = "us-central1-a"
  description = "Zone for compute instance"
}
