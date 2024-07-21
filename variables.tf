variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "ca-central-1"
}

variable "ami_id" {
  description = "Ami Amazon Linux"
  type        = string
  default     = "ami-0a69ba12b33eaa951" # Replace with a valid AMI ID for your region
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
  default     = "ter_t2_ec2"
}

variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}
