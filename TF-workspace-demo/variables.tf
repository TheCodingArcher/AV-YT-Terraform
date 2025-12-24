variable "ami" {
  description = "value for the ami"
}

variable "instance_type" {
  description = "value for the instance type"
  type = map(string)

  default = {
    "dev" = "t3.micro"
    "stage" = "t3.small"
    "prod" = "c7i-flex.large"
  }
}