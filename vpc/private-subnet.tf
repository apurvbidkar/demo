resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.apurv-vpc.id
  cidr_block = "10.0.0.16/28"

  tags = {
    Name = "private-subnet"
  }
}
