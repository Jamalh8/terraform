resource "aws_instance" "ubuntuinstance" {
  ami                         = var.ubuntu-ami
  instance_type               = var.micro
  key_name                    = var.key
  tags                        = { Name = "Ubuntu-VM" }
  associate_public_ip_address = "true"
}

