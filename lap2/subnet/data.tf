data "aws_vpc" "select" {
  filter {
          name = "tag:Name"
      values = [var.vpc_name]
  }
}