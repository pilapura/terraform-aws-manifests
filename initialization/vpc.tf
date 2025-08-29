resource "aws_vpc" "vpc_demo" {
  # Arguments
  region               = "us-east-1"
  cidr_block           = "10.160.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    "Name"        = "TerraformDemo"
    "Environment" = "Development"
    "Iac"         = "Terraform"
  }
}