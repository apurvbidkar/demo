resource "aws_route_table" "public-table1" {
  vpc_id = aws_vpc.rds-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IG.id
  }


  tags = {
    Name = "public-table1-rds"
  }
}
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.subnet1.id
  route_table_id = aws_route_table.public-table1.id
}

resource "aws_route_table" "public-table2" {
  vpc_id = aws_vpc.rds-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IG.id
  }


  tags = {
    Name = "public-table2-rds"
  }
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.subnet2.id
  route_table_id = aws_route_table.public-table2.id
}