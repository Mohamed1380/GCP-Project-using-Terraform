output "myvpc_id" {
  value = google_compute_network.myvpc.id
}

output "myvpc_name" {
  value = google_compute_network.myvpc.name
}

output "public_name" {
  value = google_compute_subnetwork.publicsubnet.name
}

output "private_name" {
  value = google_compute_subnetwork.privatesubnet.name
}