resource "aws_instance" "nginx_instance" {
  ami           = "ami-053b12d3152c0cc71" # Ubuntu 22.04 AMI for ap-south-1
  instance_type = var.instance_type
  security_groups = [aws_security_group.nginx_sg.name]

  root_block_device {
    volume_size = var.disk_size
  }

  user_data = file("userdata.sh") # Shell script for Nginx setup

  tags = {
    Name = "nginx-instance"
  }
}
