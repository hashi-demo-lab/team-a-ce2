terraform {
  cloud {
    organization = "hashi-demos-apj"

    workspaces {
      name = "team-a-ec2"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "0.75.0"
    }
  }
}

provider "aws" {
  region = var.region
}

provider "hcp" {
  client_id     = var.hcp_client_id
  client_secret = var.hcp_client_secret
}
