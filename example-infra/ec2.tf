resource "aws_instance" "web" {
    ami = "ami-00ff427d936335825"
    instance_type = "t2.micro"

    tags = {
        Name =  "Hello World"
    }
  
}

output "private_dns" {
    value = "aws_instance.web.private_dns"
  
}