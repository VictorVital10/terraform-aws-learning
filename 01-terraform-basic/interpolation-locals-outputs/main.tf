terraform {
  required_version = "1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.23.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }


  }
}

provider "aws" {
  region  = "sa-east-1"
  profile = var.aws_profile
}