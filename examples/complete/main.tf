module "eks-vpc" {
  source = "../../"
  region = var.region
  project = var.project
  vpc_cidr = var.vpc_cidr
  public_cidr = var.public_cidr
  private_cidr = var.private_cidr
  availability_zones = var.availability_zones
}