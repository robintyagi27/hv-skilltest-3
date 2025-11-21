
# configuration setup

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

#VPC details

data "aws_vpc" "default" {
  default = true
}

#AMI deatils

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

#SG deatils for nginx & SSH

resource "aws_security_group" "nginx_sg" {
  name        = "nginx-sg"
  description = "Allow HTTP (80) and SSH (22) access"
  vpc_id      = data.aws_vpc.default.id

  # Allow HTTP traffic
  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # for assignment only
  }

  # Allow SSH access
  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # for assignment only
  }

  # Outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # for assignment only
  }

  # Tags
  tags = merge(
    var.common_tags,
    {
      Name = "terraform-nginx-sg"
    }
  )
}

# EC2

resource "aws_instance" "nginx_server" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  security_groups = [aws_security_group.nginx_sg.name]

  # Cloud-init script
  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install nginx -y
    echo "Welcome to the Terraform-managed Nginx Server on Ubuntu" > /var/www/html/index.nginx-debian.html
  EOF

  # Tags
  tags = merge(
    var.common_tags,
    {
      Name = "terraform-nginx-server"
    }
  )
}
