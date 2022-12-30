resource "aws_instance" "web" {
    ami = "ami-00ff427d936335825"
    instance_type = "t2.micro"
    vpc_security_group_ids = [var.sg]
}

    tags = {
        Name =  "Hello World"
    }
  


variable "sg" {}

output "public_ip" {
    value = "aws_instance.web.public_ip"
  
}