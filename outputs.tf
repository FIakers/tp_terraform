output "instance_public_ip" {
  value = module.ec2_instance.public_ip
}
output "ssh_private_key_pem" {
  value     = module.ssh.private_key_pem
  sensitive = true
}
output "ssh_connection_command" {
  value = "ssh -i mykey.pem ec2-user@${module.ec2_instance.public_ip}"
  description = "Command to SSH into the EC2 instance"
}
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}
