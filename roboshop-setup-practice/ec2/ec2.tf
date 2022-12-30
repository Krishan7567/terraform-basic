# Creates EC2 Instance 
resource "aws_instance" "app" {
  ami                     = "ami-00ff427d936335825"
  instance_type           = "t2.micro"
  vpc_security_group_ids  = [var.sg]

  tags = {
    Name = "my-app"
  }
}

variable "sg" {}