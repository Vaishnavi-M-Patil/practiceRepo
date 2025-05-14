resource "aws_instance" "ubuntu" {
    ami = var.ami
    instance_type = var.instanceType
    key_name = var.key-pair
    security_groups = [var.security_group_id]
    subnet_id = var.public_subnet_id
    tags = {
      name = "Ubuntu Instance"
    }
}