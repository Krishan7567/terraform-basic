resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh1"
  description = "Allow ssh1 inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "allow_ssh1"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
      }

  tags = {
    Name = "allow_ssh1"
  }
}

variable "vpc_id" {}

output "sgid" {
    value = "aws_security_group.allow_ssh1.id"
  
}