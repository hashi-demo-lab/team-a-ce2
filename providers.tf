terraform {
  cloud {
    organization = "hashi-demos-apj"

    workspaces {
      project = "Team A"
      name = "team-a-ec2"
    }
  }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.49.2"
    }
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

provider "tfe" {
  token = var.TFE_TOKEN
}