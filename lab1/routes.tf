## internal route table
resource "aws_route_table" "pure_privet" {
  vpc_id = aws_vpc.first.id

  tags = {
    Name = "privet"
  }
}


## subnet with nat gw
resource "aws_route_table" "privet_with_gw" {
  vpc_id = aws_vpc.first.id

  route {
    cidr_block     = var.privet_subnet_ngw_cidr
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "${var.privet_subnet_ngw}"
  }
}


## public subnet with igw
resource "aws_route_table" "public-1" {
  vpc_id = aws_vpc.first.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "${var.public_gw}-2"
  }
}

resource "aws_route_table" "public-2" {
  vpc_id = aws_vpc.first.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = {
    Name = "${var.public_gw}-1"
  }
}

