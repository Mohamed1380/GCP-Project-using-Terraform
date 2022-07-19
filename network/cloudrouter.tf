resource "google_compute_router" "router" {
  name    = "router"
  network = google_compute_network.myvpc.id
  bgp {
    asn               = 64514
    advertise_mode    = "CUSTOM"
  }
}