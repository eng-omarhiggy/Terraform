resource "aws_s3_bucket" "s3_bucket" {
  bucket = lower("${var.team}-${var.env}-omar-higgy-1")
  acl    = "private"

  tags = {
    Name        = "${var.team}"
    Environment = "${var.env}"
  }
}