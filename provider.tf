provider "aws" {
  region = var.aws_region
}

# Set default tags for resources
locals {
  default_tags = {
    Name      = "main"
    Purpose   = "Test"
    createdby = "Rayan"
  }
}

