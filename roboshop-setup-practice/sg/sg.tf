resource "aws_security_group" "allow_ssh" {
    name        = "allow_ssh"
    description = "Allow SSH inboud trffic"
    vpc_id      = aws.vpc.main.id 

    ingress = {
      description       = "allow_ssh"
      from_port         = 22
      to_port           = 22
      protocol          = "tcp"
      cidr_blocks       = ["0.0.0.0/0"]
    } 
  
    egress = {
      from_port         = 0
      to_port           = 0
      protocol          = "-1"
      cidr_blocks       = ["0.0.0.0/0"]
      ipv6_cidr_blocks  = ["::/0"]
    } 
    tags = {
        Name = "allow_SSH"
    }
}

output "sgid" {
    value = "aws_security_group.allow_ssh.id"  
}