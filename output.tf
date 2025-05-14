output "aws_instance_public_IP" {
    value = module.ec2instance.public_ip
}

output "vpc_id" {
    value = module.myvpc.vpc_id
}