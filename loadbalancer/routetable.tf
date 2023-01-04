resource "aws_route_table" "apurv-table1" {
  vpc_id = aws_vpc.apurv-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.apurv-gw.id
  }


  tags = {
    Name = "public-table1"
  }
}
resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.apurv-table1.id
}

resource "aws_route_table" "apurv-table2" {
  vpc_id = aws_vpc.apurv-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.apurv-gw.id
  }


  tags = {
    Name = "public-table2"
  }
}
resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.apurv-table2.id
}

resource "aws_route_table" "apurv-table3" {
  vpc_id = aws_vpc.apurv-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.apurv-gw.id
  }


  tags = {
    Name = "public-table3"
  }
}
resource "aws_route_table_association" "public3" {
  subnet_id      = aws_subnet.public-subnet3.id
  route_table_id = aws_route_table.apurv-table3.id
}

