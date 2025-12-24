provider "aws" {
  region = "ap-southeast-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami = var.ami
  instance_type = lookup(var.instance_type, terraform.workspace, "t3.micro")
}