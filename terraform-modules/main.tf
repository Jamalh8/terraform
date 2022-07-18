provider "aws" {
  region = "eu-west-2"
}

module "ubuntuinstance" {
  source     = "./module-1"
  key        = var.key
  micro      = var.micro
  ubuntu-ami = var.ubuntu-ami


}

module "amazoninstance" {
  source     = "./module-2"
  key        = var.key
  nano       = var.nano
  amazon-ami = var.amazon-ami

}