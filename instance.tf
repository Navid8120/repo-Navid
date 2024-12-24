resource "aws_instance" "nginx_server" {
  ami           = "ami-053b12d3152c0cc71" # Replace with a valid Ubuntu 22 AMI ID for ap-south-1
  instance_type = var.instance_type
  key_name      = "your-key-name"

  root_block_device {
    volume_size = var.disk_size
  }

  tags = {
    Name = "NginxServer"
  }

  user_data = <<-EOT
    #!/bin/bash
    apt update -y
    apt install nginx -y
    systemctl enable nginx
    systemctl start nginx
  EOT
}

