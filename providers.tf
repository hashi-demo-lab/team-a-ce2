terraform {
  cloud {
    organization = "hashi-demos-apj"

    workspaces {
      project = "Team A"
      name    = "team-a-ec2"
    }
  }
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.49.2"
    }
  }
}