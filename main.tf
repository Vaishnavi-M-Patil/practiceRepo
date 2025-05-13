resource "aws_vpc" "myvpc" {
    cidr_block = var.vpc_cidr
    tags = {
      name = "My-VPC"
    }
}

resource "aws_subnet" "pvt_subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.pvt_cidr
    tags = {
      name ="Private subnet"
    }
}

resource "aws_subnet" "pub_subnet" {
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.pub_cidr
    map_public_ip_on_launch = true
    tags = {
      name = "Public subnet"
    }
}

resource "aws_internet_gateway" "ingw" {
    vpc_id = aws_vpc.myvpc.id
    tags = {
      name = "Internet Gateway"
    }
}

resource "aws_route_table" "rt" {
    vpc_id = aws_vpc.myvpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ingw.id
    }
}

resource "aws_route_table_association" "publicRTAsso" {
    subnet_id = aws_subnet.pub_subnet.id
    route_table_id = aws_route_table.rt.id
}

resource "aws_instance" "ubuntu" {
    ami = var.ami
    instance_type = var.instanceType
    key_name = var.key-pair
    subnet_id = aws_subnet.pub_subnet.id
#     connection {
#     type     = "ssh"
#     user     = "root"
#     host     = self.public_ip
#   }
#     provisioner "file" {
#         source = "sript.sh"
#         destination = "/tmp/script.sh"
#     }

#     provisioner "remote-exec" {
#         inline = [ 
#             "chmod +x /tmp/script.sh",
#             "./tmp/script.sh"
#          ]
#     }

provisioner "local-exec" {
    command = "echo 'Instance created successfully.'"
}

    tags = {
      name = "Ubuntu Instance"
    }
}