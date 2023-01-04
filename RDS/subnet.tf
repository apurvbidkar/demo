resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.rds-vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.0.0.0/28"
  availability_zone       = "us-east-1a"
  tags = {
    Name = "rds-subnet1"
  }
}
resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.rds-vpc.id
  map_public_ip_on_launch = true
  cidr_block              = "10.0.0.16/28"
  availability_zone       = "us-east-1b"
  tags = {
    Name = "rds-subnet2"
  }
}