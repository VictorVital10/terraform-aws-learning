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
  region  = "sa-east-1"
  profile = "Terraform"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket0237502321312321"

  tags = {
    Name        = "My First Terraform bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    UpdatedAt   = "DateTest"
  }
} 