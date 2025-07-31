output "instance_public_ips" {
  value = { for k, v in module.ec2_instance : k => v.public_ip }
  description = "Public IP addresses of all EC2 instances"
}

output "ssh_connection_commands" {
  value = { for k, v in module.ec2_instance : k => "ssh -i ${local.workspace_prefix}-${var.key_name}.pem ec2-user@${v.public_ip}" }
  description = "SSH commands for all EC2 instances"
}
output "vpc_id" {
  value = module.vpc.vpc_id
}
output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}
