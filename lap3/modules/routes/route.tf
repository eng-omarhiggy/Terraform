resource "aws_route_table" "route_tb_1" {
  vpc_id = var.vpc_id_route_tb

  route {
    cidr_block = var.route_tb_cidr
    gateway_id = var.route_tb_getway_id
  }

  tags = {
    Name = "${var.team}-${var.env}-route-tb"
  }
}