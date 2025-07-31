locals {
  workspace_prefix = terraform.workspace
}

module "ssh" {
  source   = "./modules/ssh"
  key_name = "${local.workspace_prefix}-${var.key_name}"
}

module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr       = var.vpc_cidr
  public_cidr    = var.public_cidr
  name_prefix    = local.workspace_prefix
}

module "ec2_instance" {
  for_each = toset([for i in range(var.instance_count) : tostring(i)])
  
  source         = "./modules/ec2-instance"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  subnet_id      = module.vpc.public_subnet_id
  key_name       = module.ssh.key_name
  security_group = module.vpc.security_group_id
  instance_name  = "${local.workspace_prefix}-TF-Instance-${each.key}"
  workspace      = local.workspace_prefix
}
