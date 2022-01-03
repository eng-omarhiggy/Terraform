
resource "aws_instance" "web" {
  ami           = "ami-03af6a70ccd8cb578"
  instance_type = "t2.micro"
  availability_zone = "us-west-1a"


  tags = {
    Name = "omar-higgy"
  }
}