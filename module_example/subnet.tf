resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.apurv-vpc.id
  cidr_block = "10.0.0.0/28"

  tags = {
    Name = "public-subnet1"
  }
}
resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.apurv-vpc.id
  cidr_block = "10.0.0.16/28"

  tags = {
    Name = "public-subnet1"
  }
}
