resource "aws_instance" "public-instance" {
  ami                         = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  key_name                    = aws_key_pair.key.key_name
  
}
resource "aws_key_pair" "key" {
    key_name = "apurv"
    public_key = file("${path.module}/apurv.pub")
  
}