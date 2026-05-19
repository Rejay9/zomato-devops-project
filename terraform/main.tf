# Zomato DevOps Project — AWS Infrastructure
# By: Rejay

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# Security Group — Firewall rules
resource "aws_security_group" "zomato_sg" {
  name        = "zomato-security-group"
  description = "Security group for Zomato DevOps project"

  # SSH access
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Jenkins access
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # App access
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "Zomato-Security-Group"
    Project = "Zomato-DevOps"
    Owner   = "Rejay"
  }
}

# Key Pair — for SSH access
resource "aws_key_pair" "zomato_key" {
  key_name   = "zomato-key"
  public_key = file("~/.ssh/zomato-key.pub")
}

# EC2 Instance
resource "aws_instance" "jenkins_server" {
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = "t3.micro"
  key_name               = aws_key_pair.zomato_key.key_name
  vpc_security_group_ids = [aws_security_group.zomato_sg.id]

  tags = {
    Name    = "Zomato-Jenkins-Server"
    Project = "Zomato-DevOps"
    Owner   = "Rejay"
  }
}

# Output — show important info after apply
output "instance_public_ip" {
  value       = aws_instance.jenkins_server.public_ip
  description = "Public IP of Jenkins server"
}

output "instance_id" {
  value       = aws_instance.jenkins_server.id
  description = "EC2 Instance ID"
}