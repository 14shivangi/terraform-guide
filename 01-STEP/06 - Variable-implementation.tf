
# -------------------------------------
# Input Variables
# -------------------------------------

# EC2 instance type
variable "instance_type" {
  description = "Type of EC2 instance to launch"
  type        = string
  default     = "t2.micro"
}

# AMI ID for the EC2 instance
variable "ami_id" {
  description = "AMI ID to use for the EC2 instance"
  type        = string
}

# Tags for the instance
variable "instance_name" {
  description = "Tag: Name of the EC2 instance"
  type        = string
  default     = "demo-ec2"
}

# -------------------------------------
# Provider Configuration
# -------------------------------------
provider "aws" {
  region = "us-east-1"
}

# -------------------------------------
# EC2 Instance Resource
# -------------------------------------
resource "aws_instance" "ec2_demo" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

# -------------------------------------
# Output Variables
# -------------------------------------

# Public IP of the EC2 instance
output "public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.ec2_demo.public_ip
}

# Instance ID of the EC2 instance
output "instance_id" {
  description = "Instance ID of the created EC2 instance"
  value       = aws_instance.ec2_demo.id
}
