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

output "instance_name" {
  value       = module.ec2.instance_name
  description = "The name of the EC2 instance"
}

output "full_instance_details" {
  value = {
    name       = module.ec2.instance_name
    id         = module.ec2.instance_id
    public_ip  = module.ec2.instance_public_ip
    private_ip = module.ec2.instance_private_ip
  }
  description = "All details about the EC2 instance"
} 

