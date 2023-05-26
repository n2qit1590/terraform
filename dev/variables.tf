
locals {
  dev_gce_install = "${file("../templates/startup_script_gce.tmpl")}"
}