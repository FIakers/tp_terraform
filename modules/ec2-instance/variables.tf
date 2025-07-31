variable "ami_id" {}
variable "instance_type" {}
variable "subnet_id" {}
variable "key_name" {}
variable "security_group" {}
variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
  default     = "TF-Instance"
}
variable "workspace" {
  description = "Terraform workspace name"
  type        = string
}
