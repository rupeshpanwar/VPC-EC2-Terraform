resource "aws_eip" "elastic-ip-for-nat-gw" {
  vpc                       = true
  associate_with_private_ip = "10.0.0.5"

  tags = {
    Name = "Production-EIP"
  }

 // depends_on = [aws_internet_gateway.production-igw]
}