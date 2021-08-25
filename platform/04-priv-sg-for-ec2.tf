
resource "aws_security_group" "ec2_private_security_group" {
  name        = "EC2-Private-SG"
  description = "Only allow public EC2 instances to access these instances"
  vpc_id      = data.terraform_remote_state.network_configuration.outputs.vpc_id

  ingress {
    from_port       = 0
    protocol        = "-1"
    to_port         = 0
    security_groups = [aws_security_group.ec2_public_security_group.id]
  }

  ingress {
    from_port = 80
    protocol = "TCP"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow traffic for health checking, remember this doesnt allow public internet!"
  }

  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}