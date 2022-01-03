## public subnet -1
resource "aws_subnet" "public_subnet-1" {
  vpc_id            = aws_vpc.first.id
  cidr_block        = var.cidr_public_subnet
  availability_zone = var.az_1
  tags = {
    Name = "${var.public_subnet}"
  }
}
## route table for public subnet -1
resource "aws_route_table_association" "public_subnet-1" {
  subnet_id      = aws_subnet.public_subnet-1.id
  route_table_id = aws_route_table.public-2.id
}
# public subnet -1
resource "aws_subnet" "public_subnet-2" {
  vpc_id            = aws_vpc.first.id
  cidr_block        = var.cidr_secound_subnet
  availability_zone = var.az_2
  tags = {
    Name = "${var.secound_subnet}"
  }
}
## route table for public subnet -1

resource "aws_route_table_association" "public_subnet-2" {
  subnet_id      = aws_subnet.public_subnet-2.id
  route_table_id = aws_route_table.public-1.id
}
