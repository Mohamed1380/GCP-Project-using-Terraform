resource "google_compute_subnetwork" "publicsubnet" {
  name          = "publicsubnet"
  ip_cidr_range = var.public_cider_range
  region        = var.region
  network       = google_compute_network.myvpc.id
}

resource "google_compute_subnetwork" "privatesubnet" {
  name          = "privatesubnet"
  ip_cidr_range = var.private_cider_range
  region        = var.region
  network       = google_compute_network.myvpc.id
}