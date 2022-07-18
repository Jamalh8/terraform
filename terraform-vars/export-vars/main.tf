provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "testinstance" {
  ami           = var.ami
  instance_type = var.type
}