# terraform {
#   backend "s3" {
#     bucket = "bucketforb92025"
#     region = "us-east-1"
#     key = "terraform.tfstate"
#   }
# }

data "aws_key_pair" "vir-key" {
    filter {
      name = "vpc-id"
      values = [ var.vpc ]
    }
    filter {
      name = "group-name"
      values = [ "vir-key" ]
    }
}

variable "vpc" {
    default = "vpc-0450ca407485f6731"
}

resource "aws_instance" "ec2Instance" {
    ami = var.ami
    instance_type = var.instanceType
    key_name = data.aws_key_pair.vir-key.id
    security_groups = ["secGroup"]
    # vpc_security_group_ids = [aws_security_group.newSecuritygrp.id]
    tags = {
      name = "window-instance"
    }
}