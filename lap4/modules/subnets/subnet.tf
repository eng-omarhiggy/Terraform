resource "aws_subnet" "subnet_1" {
  count = length(var.cidr_subnet)
  vpc_id            = var.vpc_id_subnet
  cidr_block        = var.cidr_subnet[count.index]
  tags = {
    Name = "${var.team}-${var.env}-1"
  }
}
