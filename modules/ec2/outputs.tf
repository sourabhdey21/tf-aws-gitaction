output "instance_id" {
  value = aws_instance.main.id
}

output "instance_public_ip" {
  value = aws_eip.instance.public_ip
}

output "instance_private_ip" {
  value = aws_instance.main.private_ip
} 