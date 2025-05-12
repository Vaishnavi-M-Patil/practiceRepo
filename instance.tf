terraform {
  backend "s3" {
    bucket = "bucketforb92025"
    region = "us-east-1"
    key = "terraform.tfstate"
  }
}

provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "ec2Instance" {
    ami = "ami-09cb80360d5069de4"
    instance_type = var.instanceType
    key_name = "vir-key"
    vpc_security_group_ids = [ "secGroup" ]
    tags = {
      name = "window-instance"
    }
}