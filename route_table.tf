resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }

  tags = local.default_tags
}

resource "aws_route_table_association" "subnet_association" {
  subnet_id      = aws_subnet.main.id
  route_table_id = aws_route_table.main.id
}
