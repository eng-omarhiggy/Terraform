resource "aws_vpc" "first" {
  cidr_block = var.vpc_cidr_main
  tags = {
    "Name" = "${var.vpc_main_name}"
  }
}
