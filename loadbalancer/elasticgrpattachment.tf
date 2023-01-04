resource "aws_lb_target_group_attachment" "test1" {
  target_group_arn = aws_lb_target_group.apurv-lb.arn
  target_id        = aws_instance.apurv-instance1.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "test2" {
  target_group_arn = aws_lb_target_group.apurv-lb.arn
  target_id        = aws_instance.apurv-instance2.id
  port             = 80
}
resource "aws_lb_target_group_attachment" "test3" {
  target_group_arn = aws_lb_target_group.apurv-lb.arn
  target_id        = aws_instance.apurv-instance3.id
  port             = 80
} 