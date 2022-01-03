resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.first.id

  tags = {
    Name = "${var.public_gw}"
  }
}