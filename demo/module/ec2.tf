resource "aws_instance" "public" {
  count = 5
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = aws_key_pair.key-pair.key_name
  tags = {
    Name = "demo-${count.index+1}"
  }
}
resource "aws_key_pair" "key-pair" {
  key_name   = "apurv"
  public_key = sensitive(file("${path.module}/apurv.pub"))
}