variable "vpc_cidr" {
  description = "CIDR block for the VPC"
}
variable "public_cidr" {
  description = "CIDR block for public subnet"
}
variable "instance_type" {
  description = "EC2 instance type"
}
variable "ami_id" {
  description = "AMI ID for EC2 instance"
}
variable "key_name" {
  description = "Name for the SSH key"
  default     = "key_tf"
}
