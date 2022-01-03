resource "aws_route_table_association" "a" {
  subnet_id      = var.subnet_id_associ
  route_table_id = var.route_tb_associ

}