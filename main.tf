provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "ssh_only" {
  name        = "allow_ssh"
  description = "Security group to allow SSH access only"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_instance" "ter_t2_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.ssh_only.name] # Reference the security group

  tags = {
    Name = var.instance_name
  }
}
