resource "aws_autoscaling_policy" "target-tracking-autoscale" {

  name                   = "target-traclking-policy"
  policy_type            = "TargetTrackingScaling"
  autoscaling_group_name = aws_autoscaling_group.apurv-ASG.name


  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }

    target_value     = 20
    disable_scale_in = "false"
  }
}