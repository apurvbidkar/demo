resource "aws_vpc" "apurv-vpc" {
  cidr_block       = "10.0.0.0/24"
  instance_tenancy = "default"

  tags = {
    Name = "apurv-vpc"
  }
}