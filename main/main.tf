module "vpc" {
  source = "./modules/vpc"

  vpc_cidr             = "10.0.0.0/16"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.101.0/24", "10.0.102.0/24"]
  availability_zones   = ["eu-central-1a", "eu-central-1b"]
  create_nat_gateway   = var.create_nat_gateway
  create_igw           = var.create_igw
}
