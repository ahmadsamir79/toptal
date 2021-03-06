terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.26.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.0.1"
    }
  }
  required_version = ">= 1.1.0"

  # cloud {
  #   organization = "my-learn-terraform-aws"

  #   workspaces {
  #     name = "gh-actions-demo"
  #   }
  # }

  #Add Backend
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Toptal_ahmad"
    workspaces {
      name = "toptal_ahmad"

    }
  }


}

provider "aws" {
  region = "eu-central-1"
}

resource "random_pet" "sg" {}
