resource "aws_eip" "nat_gateway" {
  vpc = true
}
resource "aws_nat_gateway" "apurv-NAT" {
  allocation_id = aws_eip.nat_gateway.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "apurv-NAT"
  }


}