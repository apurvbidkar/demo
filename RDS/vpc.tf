resource "aws_vpc" "rds-vpc" {
  cidr_block       = "10.0.0.0/26"
  instance_tenancy = "default"

  tags = {
    Name = "rds-vpc"
  }
}