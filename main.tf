provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "ter_t2_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
