resource "aws_db_instance" "default" {
  allocated_storage    = var.db_storage
  db_subnet_group_name = var.sub_group
  engine               = var.db_engine
  engine_version       = var.egine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  parameter_group_name = var.prams_group_name
  username             = var.db_user_name
  password             = var.db_pass_word
  availability_zone    = each.value
  for_each             = var.az
}
