provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"

  project_name        = var.project_name
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone  = var.availability_zone
}

module "security" {
  source = "./modules/security"

  project_name = var.project_name
  vpc_id      = module.vpc.vpc_id
}

module "ec2" {
  source = "./modules/ec2"

  project_name      = var.project_name
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_id
  security_group_id = module.security.security_group_id
  root_volume_size  = var.root_volume_size
} 