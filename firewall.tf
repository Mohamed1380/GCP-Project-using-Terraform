resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = module.network.myvpc_id
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "icmp"
  }
  
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  
}