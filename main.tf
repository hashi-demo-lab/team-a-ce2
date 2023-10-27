module "ec2_instance" {
  source  = "app.terraform.io/hashi-demos-apj/ec2/aws"
  version = "0.0.2"

  deployment_id              = "example-deployment"
  instance_type              = var.instance_type
  aws_key_pair_key_name      = var.aws_key_pair_key_name
  public_subnet_id           = var.public_subnet_id
  security_group_http_id     = var.security_group_http_id
  security_group_ssh_id      = var.security_group_ssh_id
  ssm_instance_profile_name  = var.ssm_instance_profile_name
  owner                      = var.owner
  ttl                        = var.ttl
  environment                = var.environment
}
