provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "demo" {
  ami = "ami-00d8fc944fb171e29"
  instance_type = "t3.micro"
}