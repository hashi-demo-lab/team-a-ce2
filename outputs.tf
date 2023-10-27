output "instance_id" {
  description = "The ID of the created EC2 instance."
  value       = module.ec2_instance.instance_id
}

output "public_ip" {
  description = "Public IP address associated with the EC2 instance."
  value       = module.ec2_instance.public_ip
}

output "private_ip" {
  description = "Private IP address associated with the EC2 instance."
  value       = module.ec2_instance.private_ip
}

output "instance_state" {
  description = "The state of the EC2 instance."
  value       = module.ec2_instance.instance_state
}
