provider "aws" {
  region = "ap-southeast-1"
}

module "ec2_instance" {
  source = "./modules/ec2_instance"
  ami_value = "ami-00d8fc944fb171e29"
  instance_type_value = "t3.micro"
  region_value = "ap-southeast-1"
}