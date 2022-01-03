resource "aws_subnet" "privet_subnet-1" {
  vpc_id            = aws_vpc.first.id
  cidr_block        = var.cidr_privet_subnet_1
  availability_zone = "us-west-1a"
  tags = {
    Name = "${var.privet_subnet_1}"
  }
}

## assosiate pirvet subnet-1 to internal route table
resource "aws_route_table_association" "privet_table-1" {
  subnet_id      = aws_subnet.privet_subnet-1.id
  route_table_id = aws_route_table.privet_with_gw.id
}


resource "aws_subnet" "privet_subnet-2" {
  vpc_id            = aws_vpc.first.id
  cidr_block        = var.cidr_privet_subnet_2
  availability_zone = "us-west-1b"
  tags = {
    Name = "${var.privet_subnet_2}"
  }
}
## assosiate pirvet subnet-1 to internal route table
resource "aws_route_table_association" "privet_table-2" {
  subnet_id      = aws_subnet.privet_subnet-2.id
  route_table_id = aws_route_table.pure_privet.id
}