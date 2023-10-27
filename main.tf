data "terraform_remote_state" "lz" {
  backend = "remote"
  config = {
    organization = "hashi-demos-apj"
    workspaces = {
      name = "team-a-lz"
    }
  }
}

module "ec2_instance" {
  source  = "app.terraform.io/hashi-demos-apj/ec2/aws"
  version = "0.0.3"

  deployment_id             = data.terraform_remote_state.lz.outputs.deployment_id
  instance_type             = var.instance_type
  aws_key_pair_key_name     = data.terraform_remote_state.lz.outputs.aws_key_pair_name
  public_subnet_ids         = data.terraform_remote_state.lz.outputs.public_subnet_ids
  security_group_http_id    = data.terraform_remote_state.lz.outputs.security_group_http_id
  security_group_ssh_id     = data.terraform_remote_state.lz.outputs.security_group_ssh_id
  ssm_instance_profile_name = data.terraform_remote_state.lz.outputs.ssm_instance_profile_name
  owner                     = var.owner
  ttl                       = var.ttl
  environment               = var.environment
  hcp_client_id             = var.hcp_client_id
  hcp_client_secret         = var.hcp_client_secret
}
