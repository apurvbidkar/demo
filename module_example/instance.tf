# resource "aws_instance" "public-instance1" {
#   ami                         = "ami-08c40ec9ead489470"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = "true"
#   key_name                    = "angular"
#   vpc_security_group_ids      = ["${aws_security_group.apurv-SG.id}"]
#   subnet_id                   = aws_subnet.public1.id

#   tags = {
#     "Name" = "Public1"
#   }
# }
# resource "aws_instance" "public-instance2" {
#   ami                         = "ami-08c40ec9ead489470"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = "true"
#   key_name                    = "angular"
#   vpc_security_group_ids      = ["${aws_security_group.apurv-SG.id}"]
#   subnet_id                   = aws_subnet.public2.id

#   tags = {
#     "Name" = "Public2"
#   }
# }
module "instance" {
  source = "./modules/"
  
}