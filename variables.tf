variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}
variable "public_cidr" {
  description = "CIDR block for public subnet"
  default     = "10.0.1.0/24"
}
variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  default     = "ami-08a6efd148b1f7504"
}
variable "key_name" {
  description = "Name for the SSH key"
  default     = "key_tf"
}
variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}
