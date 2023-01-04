resource "aws_subnet" "area_subnets" {
  count                   = 4 # creates four subnets
  vpc_id                  = var.area_vpc_id
  map_public_ip_on_launch = var.map_public_ip_on_launch

  cidr_block           = cidrsubnet(var.area_subnet_cidr, 4, count.index)
  availability_zone_id = data.aws_availability_zones.available.zone_ids[count.index % length(data.aws_availability_zones.available.zone_ids)]

  tags = tomap({ "Name" = "${var.subnet_names[count.index]}" })
}

variable "subnet_names" {
  type = list(string)
  default = [
    "Primary NAT Gateway Subnet",
    "Secondary NAT Gateway Subnet",
    "Channel A Subnet",
    "Channel B Subnet"
  ]
}

variable "map_public_ip_on_launch" {
  type    = bool
  default = true
}

variable "area_vpc_id" {
  # documentation = "The Terraform ID of the containing VPC"
  type    = string
  default = "demo"

}

variable "area_subnet_cidr" {
  # documentation = "The base CIDR that you are working with"
  type    = string
  default = "10.0.0.0/16"
}

data "aws_availability_zones" "available" {
  state = "available"

  filter { # Only fetch Availability Zones (no Local Zones)
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}
