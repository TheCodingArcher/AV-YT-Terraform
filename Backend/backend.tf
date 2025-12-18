terraform {
    backend "s3" {
        bucket = "rahul-s3-2025dec18"
        key = "rahul/terraform.tfstate"
        region = "ap-southeast-1"
        encrypt = true
        dynamodb_table = "terraform_lock"
    }
}