
resource "aws_autoscaling_policy" "backend-production-scale-up-policy" {
  autoscaling_group_name   = aws_autoscaling_group.ec2_private_autoscaling_group.name
  name                     = "Production-Backend-AutoScaling-Policy"
  policy_type              = "TargetTrackingScaling"
  min_adjustment_magnitude = 1

  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 80.0
  }
}