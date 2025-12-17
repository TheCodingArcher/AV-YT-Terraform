resource "aws_instance" "demo-modules" {
  ami = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    Name = "my_first_ec2"
  }
}