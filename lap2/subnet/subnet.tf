resource "aws_subnet" "main" {
  vpc_id     = data.aws_vpc.select.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}