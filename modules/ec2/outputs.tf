output "instance_id" {
  value = aws_instance.main.id
}

output "instance_public_ip" {
  value = aws_eip.instance.public_ip
}

output "instance_private_ip" {
  value = aws_instance.main.private_ip
}

output "instance_name" {
  value = aws_instance.main.tags["Name"]
  description = "The name tag of the EC2 instance"
} 