resource "aws_internet_gateway" "IG" {
  vpc_id = aws_vpc.rds-vpc.id
  tags = {
    Name = "IG-rds"
  }
}