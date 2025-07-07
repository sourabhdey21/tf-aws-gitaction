output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "instance_public_ip" {
  value = module.ec2.instance_public_ip
}

output "instance_private_ip" {
  value = module.ec2.instance_private_ip
} 