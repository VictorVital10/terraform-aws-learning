terraform {
  required_version = "1.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.23.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "TerraformInstance230472234708" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}