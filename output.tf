output "aws_instance_public_IP" {
    value = module.ec2instance.public_ip
}

output "public_subnet_id" {
    value = module.myvpc.public_subnet.id
}

output "security_groups_id" {
    value = module.myvpc.security_groups.id
}

output "vpc_id" {
    value = module.myvpc.vpc_id
}