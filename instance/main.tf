resource "aws_instance" "ubuntu" {
    ami = var.ami
    instance_type = var.instanceType
    key_name = var.key-pair
    security_groups = [aws_security_group.newSecuritygrp.id]
    subnet_id = module.vpc.pub_subnet.id
    tags = {
      name = "Ubuntu Instance"
    }
}