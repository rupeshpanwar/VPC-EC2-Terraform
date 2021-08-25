# data "aws_ami" "launch_configuration_ami" {
#     most_recent = true
#     owners      = ["self"]

#     filter {
#         name = "owner-alias"
#         values = ["amazon"]
#     }
# }

data "aws_ami" "launch_configuration_ami" {
most_recent = true
owners = ["099720109477"] # Canonical

  filter {
      name   = "name"
      values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"]
  }

  filter {
      name   = "virtualization-type"
      values = ["hvm"]
  }
}
