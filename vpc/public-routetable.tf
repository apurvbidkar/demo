resource "aws_route_table" "public-table" {
  vpc_id = aws_vpc.apurv-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.apurv-gw.id
  }


  tags = {
    Name = "public-table"
  }
}
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public-table.id
}