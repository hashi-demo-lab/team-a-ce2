variable "instance_type" {
  description = "AWS EC2 instance type."
  type        = string
  default     = "t2.micro"
}

variable "deployment_id" {
  description = "Deployment ID"
  type        = string
  default     = ""
}

variable "aws_key_pair_key_name" {
  description = "Key pair name for EC2."
  type        = string
  default     = ""
}

variable "public_subnet_ids" {
  description = "List of public subnet IDs for the EC2 instance."
  type        = list(string)
  default     = [""]
}

variable "security_group_http_id" {
  description = "Security group ID for HTTP access."
  type        = string
  default     = ""
}

variable "security_group_ssh_id" {
  description = "Security group ID for SSH access."
  type        = string
  default     = ""
}

variable "ssm_instance_profile_name" {
  description = "Name of the IAM instance profile for SSM."
  type        = string
  default     = ""
}

variable "owner" {
  description = "Owner of the EC2 resources."
  type        = string
  default     = "aarone"
}

variable "ttl" {
  description = "Time to Live for the EC2 resources."
  type        = number
  default     = 48
}

variable "environment" {
  description = "Environment where EC2 will be deployed (e.g., prod, dev, staging)."
  type        = string
  default     = "dev"
}