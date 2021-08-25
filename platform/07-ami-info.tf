data "aws_ami" "launch_configuration_ami" {
    most_recent = true

    filter {
        name = "owner-alias"
        values = ["amazon"]
    }
}