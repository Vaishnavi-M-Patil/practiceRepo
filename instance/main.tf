resource "aws_instance" "ubuntu" {
    ami = var.ami
    instance_type = var.instanceType
    key_name = var.key-pair
    security_groups = [module.myvpc.security_groups_id]
    subnet_id = module.myvpc.public_subnet_id
    tags = {
      name = "Ubuntu Instance"
    }
}