resource "tls_private_key" "oskey" {
  algorithm = "RSA"
}

resource "local_file" "myterrakey" {
  content  = tls_private_key.oskey.private_key_pem
  filename = "myterrakey.pem"
}

resource "aws_key_pair" "key121" {
  key_name   = "myterrakey"
  sensitive  = true
  public_key = tls_private_key.oskey.public_key_openssh
}

resource "aws_instance" "mytfinstance" {
  ami           = "ami-0574da719dca65348"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.key121.key_name

 

  connection {
    type        = "ssh"
    user        = var.INSTANCE_USERNAME
    private_key = tls_private_key.oskey.private_key_pem
    host        = aws_instance.mytfinstance.public_ip
  }
}