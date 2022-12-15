terraform {
  backend "s3"{
    bucket = "terraform-bucket-krishan"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"
  
}