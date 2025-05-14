output "vpc_id" {
    value = aws_vpc.myvpc.id
}

# output exposed from vpc module and pass to instance module
output "security_groups_id" {
    value = aws_security_group.newSecuritygrp.id
}

output "public_subnet_id" {
    value = aws_subnet.pub_subnet.id
}