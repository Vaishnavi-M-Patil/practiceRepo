terraform {
  backend "s3" {
    bucket = "terraform-backend-1283"
    region = "us-east-1"
    key = "terraform.tfstate"
  }
}

module "myvpc" {
  source = "./vpc"
  vpc_cidr = var.vpc_cidr
  pvt_cidr = var.pvt_cidr
  pub_cidr = var.pub_cidr
}

module "ec2instance" {
  source = "./instance"
  instanceType = var.instanceType
  ami = var.ami
  key-pair = var.key-pair
}