output "public_ip_ubuntu" {
  value = module.ubuntuinstance.public_ip
}

output "public_ip_amazon" {
  value = module.amazoninstance.public_ip
}