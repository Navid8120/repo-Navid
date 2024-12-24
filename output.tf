output "public_ip" {
  value = aws_instance.nginx_instance.public_ip
}

output "nginx_url" {
  value = "http://${aws_instance.nginx_instance.public_ip}"
}