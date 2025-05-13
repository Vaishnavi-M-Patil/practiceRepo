output "aws_instance_public_IP" {
    value = aws_instance.ec2Instance.public_ip
}
