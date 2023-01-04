resource "aws_lb" "apurv-lb" {
  name               = "apurv-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.apurv-SG.id]
  subnets            = ["${aws_subnet.public-subnet1.id}", "${aws_subnet.public-subnet2.id}", "${aws_subnet.public-subnet3.id}"]

  enable_deletion_protection = true

}