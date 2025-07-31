module "ssh" {
  source   = "./modules/ssh"
  key_name = var.key_name
}

module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr       = var.vpc_cidr
  public_cidr    = var.public_cidr
}

module "ec2_instance" {
  source         = "./modules/ec2-instance"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.vpc.public_subnet_id
  key_name       = module.ssh.key_name
  security_group = module.vpc.security_group_id
}
