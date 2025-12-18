resource "aws_instance" "rahul" {
  ami = var.ami_value
  instance_type = var.instance_type_value

  tags = {
    name = "demo-ec2"
  }
}

resource "aws_s3_bucket" "rahul-s3-bucket-xyz" {
  bucket = var.bucket_value
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "terraform_lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}