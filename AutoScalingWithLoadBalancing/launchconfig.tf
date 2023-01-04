resource "aws_launch_configuration" "as_conf" {
  name                        = "web_config"
  image_id                    = "ami-08c40ec9ead489470"
  instance_type               = "t2.micro"
  key_name                    = "angular"
  security_groups             = ["${aws_security_group.apurv-SG.id}"]
  associate_public_ip_address = "true"
}