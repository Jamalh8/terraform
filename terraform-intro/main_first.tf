provider "aws" {
  region = "eu-west-2"
}
// Input varaibles
variable "name-tag" {
  type        = string
  default     = "My-Terraform"
  description = "Prefix a name for instance"
}
// Local variables
locals {
  imageid      = "ami-0bd2099338bc55e6d"
  imageid2     = "ami-05a8c865b4de3b127"
  instanceType = "t2.micro"
}

resource "aws_instance" "testinstance" {
  ami                         = local.imageid
  instance_type               = local.instanceType
  key_name                    = "aws-key-london"
  tags                        = { Name = "${var.name-tag}-VM" }
  subnet_id                   = "subnet-021b4d8f9c6c4d67e"
  associate_public_ip_address = "true"
}

resource "aws_instance" "testinstance2" {
  ami                         = local.imageid2
  instance_type               = local.instanceType
  key_name                    = "aws-key-london"
  tags                        = { Name = "${var.name-tag}-VM" }
  subnet_id                   = "subnet-021b4d8f9c6c4d67e"
  associate_public_ip_address = "true"
}

