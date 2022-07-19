// Bastion Host
resource "google_compute_instance" "bastion" {
  name         = "bastion"
  machine_type = "e2-medium"
  zone         = "us-west2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${module.network.myvpc_name}"
    subnetwork = "${module.network.public_name}"
    access_config {
      // Ephemeral public IP
    }
  }

}

// Private machine

resource "google_compute_instance" "mymachine" {
  name         = "mymachine"
  machine_type = "e2-medium"
  zone         = "us-west2-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "${module.network.myvpc_name}"
    subnetwork = "${module.network.private_name}"
    
  }

}