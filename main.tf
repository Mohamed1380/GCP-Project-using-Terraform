module "network" {
  source = "./network"
  region = var.region
  public_cider_range = var.public_cider_range
  private_cider_range = var.private_cider_range
}