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
  region = "us-west-2"
}

resource "random_pet" "sg" {}


  
