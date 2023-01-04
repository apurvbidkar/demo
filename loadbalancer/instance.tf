resource "aws_instance" "apurv-instance1" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "jenkins-installed"
  vpc_security_group_ids      = ["${aws_security_group.apurv-SG.id}"]
  subnet_id                   = aws_subnet.public-subnet1.id
  user_data                   = file("${path.module}/scripts.sh")

  tags = {
    "Name" = "loadbalncer1"
  }
}
resource "aws_instance" "apurv-instance2" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "jenkins-installed"
  vpc_security_group_ids      = ["${aws_security_group.apurv-SG.id}"]
  subnet_id                   = aws_subnet.public-subnet2.id
  user_data                   = file("${path.module}/scripts.sh")

  tags = {
    "Name" = "loadbalncer2"
  }
}
resource "aws_instance" "apurv-instance3" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = "jenkins-installed"
  vpc_security_group_ids      = ["${aws_security_group.apurv-SG.id}"]
  subnet_id                   = aws_subnet.public-subnet3.id
  user_data                   = file("${path.module}/scripts.sh")

  tags = {
    "Name" = "loadbalncer3"
  }
}