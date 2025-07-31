output "instance_public_ip" {
  value = module.ec2_instance.public_ip
}
output "ssh_private_key_pem" {
  value     = module.ssh.private_key_pem
  sensitive = true
}
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}
