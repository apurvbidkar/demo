resource "aws_subnet" "public-subnet1" {
  vpc_id                  = aws_vpc.apurv-vpc.id
  cidr_block              = "10.0.0.0/26"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "public-subnet1"
  }
}
resource "aws_subnet" "public-subnet2" {
  vpc_id                  = aws_vpc.apurv-vpc.id
  cidr_block              = "10.0.0.64/26"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "public-subnet2"
  }
}
resource "aws_subnet" "public-subnet3" {
  vpc_id                  = aws_vpc.apurv-vpc.id
  cidr_block              = "10.0.0.128/26"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1c"

  tags = {
    Name = "public-subnet3"
  }
}