resource "aws_instance" "public-instance" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "angular"
  vpc_security_group_ids      = ["${aws_security_group.apurv-SG.id}"]
  subnet_id                   = aws_subnet.public.id

  tags = {
    "Name" = "Public"
  }
}