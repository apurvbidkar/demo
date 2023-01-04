resource "aws_instance" "private-instance" {
  ami                    = "ami-08c40ec9ead489470"
  instance_type          = "t2.micro"
  key_name               = "angular"
  vpc_security_group_ids = ["${aws_security_group.apurv-SG.id}"]
  subnet_id              = aws_subnet.private.id

  tags = {
    "Name" = "Private"
  }
}