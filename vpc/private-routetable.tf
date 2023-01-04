resource "aws_route_table" "private-table" {
  vpc_id = aws_vpc.apurv-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.apurv-NAT.id
  }


  tags = {
    Name = "private-table"
  }
}
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private-table.id
}