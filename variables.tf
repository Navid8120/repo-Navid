variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "disk_size" {
  description = "Disk size for the EC2 instance"
  default     = 30
}

variable "allowed_ports" {
  description = "Ports to allow in the security group"
  default     = [22, 80, 443]
}

variable "aws_access_key_id" {
  description = "AKIAYXWBOF2RHOU2XI4W"
}

variable "aws_secret_access_key" {
  description = "O7pGrI7zYzQje4PW9ydD1hDe97ppluyMVqS12F7K"
}
