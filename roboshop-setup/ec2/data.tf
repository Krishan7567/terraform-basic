data "aws_ami" "myami" {
    most_recent = true
    name_regex  = "b51-ansible-base"
    owners      = ["b51-ansible-image"]

  
}