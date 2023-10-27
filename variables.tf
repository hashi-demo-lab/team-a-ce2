variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-southeast-2"
}

variable "hcp_client_id" {
  description = "The client ID used to authenticate with HashiCorp Cloud Platform."
  type        = string
  sensitive   = true # This will ensure Terraform doesn't print this in logs
}

variable "hcp_client_secret" {
  description = "The client secret used to authenticate with HashiCorp Cloud Platform."
  type        = string
  sensitive   = true # This will ensure Terraform doesn't print this in logs
}

variable "instance_type" {
  description = "AWS EC2 instance type."
  type        = string
  default     = "t2.micro"
}

variable "aws_key_pair_key_name" {
  description = "Key pair name for EC2."
  type        = string
}

variable "public_subnet_id" {
  description = "Subnet ID where the EC2 instance will reside."
  type        = string
}

variable "security_group_http_id" {
  description = "Security group ID for HTTP access."
  type        = string
}

variable "security_group_ssh_id" {
  description = "Security group ID for SSH access."
  type        = string
}

variable "ssm_instance_profile_name" {
  description = "Name of the IAM instance profile for SSM."
  type        = string
}

variable "owner" {
  description = "Owner of the EC2 resources."
  type        = string
}

variable "ttl" {
  description = "Time to Live for the EC2 resources."
  type        = number
  default     = 48
}

variable "environment" {
  description = "Environment where EC2 will be deployed (e.g., prod, dev, staging)."
  type        = string
}