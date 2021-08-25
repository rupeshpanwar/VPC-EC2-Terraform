
resource "aws_autoscaling_group" "ec2_private_autoscaling_group" {
  name                  = "Production-Backend-AutoScalingGroup"
  vpc_zone_identifier   = [
    data.terraform_remote_state.network_configuration.outputs.private-subnet-1_id,
    data.terraform_remote_state.network_configuration.outputs.private-subnet-2_id,
    data.terraform_remote_state.network_configuration.outputs.private-subnet-3_id
  ]
  max_size              = var.ec2_max_instance_size
  min_size              = var.ec2_min_instance_size
  launch_configuration  = aws_launch_configuration.ec2_private_launch_configuration.name
  health_check_type     = "ELB"
  load_balancers        = [aws_elb.backend-load-balancer.name]

  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = var.tag_production
  }

  tag {
    key                 = "Type"
    propagate_at_launch = true
    value               = var.tag_backend
  }
}