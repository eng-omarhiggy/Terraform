resource "aws_subnet" "subnet_1" {
  vpc_id            = var.vpc_id_subnet
  cidr_block        = var.cidr_subnet_1
  availability_zone = var.sub_az_1

  tags = {
    Name = "${var.team}-${var.env}-1"
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id            = var.vpc_id_subnet
  cidr_block        = var.cidr_subnet_2
  availability_zone = var.sub_az_2

  tags = {
    Name = "${var.team}-${var.env}-2"
  }
}