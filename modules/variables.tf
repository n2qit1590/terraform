variable "instance_name" {
    type = string
    default = ""
}

variable "machine_type" {
    type = string
    default = "f1-micro"
}

variable "instance_zone" {
  type = string
  default = "us-central1-a"
  description = "Zone for compute instance"
}

variable "instance_image" {
  type = string
  default = "debian-cloud/debian-10"
}

variable "instance_network" {
  type = string
  default = "default"
}

variable "startup_script" {
  type = string
  default = ""
}

variable "firewall_name" {
  type = string
  default = ""
}

variable "tags" {
    type = list
    default = ["http-server"]
}

variable "source_ranges" {
    type = list
    default = ["0.0.0.0/0"]
}