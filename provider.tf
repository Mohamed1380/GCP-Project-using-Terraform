provider "google" {
  credentials = file("abdelhadyfinal-b9fbdcaa146a.json")
  project     = var.project
  region      = var.region
}

