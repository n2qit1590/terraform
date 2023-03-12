
resource "google_compute_instance" "default" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.instance_zone

  boot_disk {
    initialize_params {
      image = var.instance_image
    }
  }

  network_interface {
    network = var.instance_network

    access_config {
      
    }
  }

    metadata_startup_script = var.startup_script

    // Apply the firewall rule to allow external IPs to access this instance
    tags = var.tags
}

resource "google_compute_firewall" "http-server" {
  name    = var.firewall_name
  network = var.instance_network

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  // Allow traffic from everywhere to instances with an http-server tag
  source_ranges = var.source_ranges
  target_tags   = var.tags
}