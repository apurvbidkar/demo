resource "aws_lb_target_group" "apurv-lb" {
  name     = "apurv-lb"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.apurv-vpc.id
}

