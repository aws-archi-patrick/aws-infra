output "instance_id" {
  description = "The ID of the created instance"
  value       = aws_instance.ter_t2_ec2.id
}

output "public_ip" {
  description = "The public IP address of the created instance"
  value       = aws_instance.ter_t2_ec2.public_ip
}

output "instance_arn" {
  description = "The ARN of the created instance"
  value       = aws_instance.ter_t2_ec2.arn
}
