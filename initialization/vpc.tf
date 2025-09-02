resource "aws_vpc" "vpc_demo" {
  # Arguments
  cidr_block           = var.cidr_block
  enable_dns_support   = var.dns_support
  enable_dns_hostnames = var.dns_hostnames

  lifecycle {
   #ignore_changes = [cidr_block]
   #prevent_destroy = true
   #create_before_destroy = true
  }

  tags = merge(var.vpc_tags, local.common_tags)
}