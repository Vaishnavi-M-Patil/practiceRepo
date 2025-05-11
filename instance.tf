provider "aws" {
    region = "us-east-1"  
}

resource "aws_instance" "ec2Instance" {
    ami = "ami-09cb80360d5069de4"
    instance_type = "t3.micro"
    key_name = "vir-key"
    vpc_security_group_ids = [ "secGroup" ]
    tags = {
      name = "window-instance"
    }
}