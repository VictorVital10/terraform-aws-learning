locals {

  ip_filepath = "ips.json"

  common_tags = {
    Service     = "TF Course"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Victor Vital"
  }
}