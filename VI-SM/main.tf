provider "aws" {
  region = "ap-southeast-1"
}

provider "vault" {
  address = "http://13.215.203.102:8200"
  skip_child_token = true

  auth_login {
    path = "auth/approle/login"

    parameters = {
      role_id = "d27dbe40-bea1-c02e-58cf-919aea4ebeee"
      secret_id = "6c864d27-dcf2-ea93-05d7-d08fbed9b381"
    }
  }
}

data "vault_kv_secret_v2" "example" {
  mount = "kvSecrets"
  name  = "test-secret"
}

resource "aws_instance" "example" {
  ami = "ami-00d8fc944fb171e29"
  instance_type = "t3.micro"

  tags = {
    Name = "demo-vault"
    Environment = "dev"
    secret = data.vault_kv_secret_v2.example.data["username"]
  }
}