variable "aws_access_key_id" {
  description = "AWS Access Key ID"
  type        = string
}

variable "aws_secret_access_key" {
  description = "AWS Secret Access Key"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "disk_size" {
  description = "Disk size in GB"
  default     = 30
}


variable "allowed_ports" {
  description = "Ports to allow in the security group"
  default     = [22, 80, 443]
}