
resource "aws_internet_gateway" "apurv-gw" {
  vpc_id = aws_vpc.apurv-vpc.id

  tags = {
    Name = "apurv-gw"
  }
}