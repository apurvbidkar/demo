resource "aws_autoscaling_group" "apurv-ASG" {
  name                      = "apurv-ASG"
  max_size                  = 3
  min_size                  = 2
  health_check_grace_period = 60
  health_check_type         = "ELB"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.as_conf.name
  vpc_zone_identifier       = [aws_subnet.public-subnet1.id, aws_subnet.public-subnet2.id, aws_subnet.public-subnet3.id]
  target_group_arns         = ["${aws_lb_target_group.apurv-lb.arn}"]
}