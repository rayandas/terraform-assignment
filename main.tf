resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = local.default_tags
}
