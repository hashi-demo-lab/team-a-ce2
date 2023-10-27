data "tfe_outputs" "foo" {
  organization = "hashi-demos-apj"
  workspace    = "team-a-lz"
}

module "ec2_instance" {
  source  = "app.terraform.io/hashi-demos-apj/ec2/aws"
  version = "0.0.5"

  deployment_id             = nonsensitive(data.tfe_outputs.foo.values.deployment_id)
  instance_type             = var.instance_type
  aws_key_pair_key_name     = nonsensitive(data.tfe_outputs.foo.values.aws_key_pair_key_name)
  public_subnet_ids         = nonsensitive(data.tfe_outputs.foo.values.public_subnet_ids)
  security_group_http_id    = nonsensitive(data.tfe_outputs.foo.values.security_group_http_id)
  security_group_ssh_id     = nonsensitive(data.tfe_outputs.foo.values.security_group_ssh_id)
  ssm_instance_profile_name = nonsensitive(data.tfe_outputs.foo.values.ssm_instance_profile_name)
  owner                     = var.owner
  ttl                       = var.ttl
  environment               = var.environment
}