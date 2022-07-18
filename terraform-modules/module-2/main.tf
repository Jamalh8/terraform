resource "aws_instance" "amazoninstance" {
  ami                         = var.amazon-ami
  instance_type               = var.nano
  key_name                    = var.key
  tags                        = { Name = "Amazon-VM" }
  subnet_id                   = "subnet-021b4d8f9c6c4d67e"
  associate_public_ip_address = "true"
}
