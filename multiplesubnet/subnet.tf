
resource "aws_subnet" "subnet" {
  count                   = 2
  vpc_id                  = aws_vpc.rds-vpc.id
  map_public_ip_on_launch = true
  cidr_block              = cidrsubnet(aws_vpc.rds-vpc.cidr_block, 2, count.index)
  tags = {
    Name = "demo-${count.index + 1}"
  }
}