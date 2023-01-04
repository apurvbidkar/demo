resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.apurv-vpc.id
  cidr_block = "10.0.0.0/28"

  tags = {
    Name = "public-subnet"
  }
}
