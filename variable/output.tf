output "public" {
  value = aws_instance.web.public_ip 
}

output "private-ip" {
  value = aws_instance.web.private_ip  
}