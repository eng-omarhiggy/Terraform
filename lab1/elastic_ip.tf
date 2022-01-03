resource "aws_eip" "elb" {
  vpc = true

  tags = {
    Name = "${var.els_ip}"
  }
}