# Creates EC2 Instance 
resource "aws_instance" "app" {
  instance_type    = "t2.micro"
}
  tags = {
    Name = "my-app"
  }
