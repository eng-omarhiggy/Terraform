resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.elb.id
  subnet_id     = aws_subnet.public_subnet-1.id

  tags = {
    Name = "${var.nat_gw}"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw]
}