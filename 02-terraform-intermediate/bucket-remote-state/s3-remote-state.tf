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

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "s3-remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  tags = {
    Description = "Stores TF remote state files"
    ManagedBy   = "Terraform"
    Owner       = "Victor Vital"
    CreatedDat  = "04/12/2025"
  }
}

resource "aws_s3_bucket_versioning" "s3-remote-state-versioning" {
  bucket = aws_s3_bucket.s3-remote-state.id

  versioning_configuration {
    status = "Enabled"
  }
}

output "remote-state-bucket" {
  value = aws_s3_bucket.s3-remote-state.bucket
}

output "remote-state-bucket-arn" {
  value = aws_s3_bucket.s3-remote-state.arn
}

   