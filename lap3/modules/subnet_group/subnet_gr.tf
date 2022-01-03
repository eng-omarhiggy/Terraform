resource "aws_db_subnet_group" "subnet_group" {
  name       = "main"
  subnet_ids = ["${var.subnet_id_1}", "${var.subnet_id_2}"]
  tags = {
    Name = "${var.team}-${var.env}"
  }
}