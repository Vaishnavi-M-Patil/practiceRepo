# # terraform {
# #   backend "s3" {
# #     bucket = "bucketforb92025"
# #     region = "us-east-1"
# #     key = "terraform.tfstate"
# #   }
# # }

# resource "aws_instance" "ec2Instance" {
#     ami = var.ami
#     instance_type = var.instanceType
#     key_name = "vir-key"
#     security_groups = ["secGroup"]
#     tags = {
#       name = "window-instance"
#     }
# }