terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_instance" "lab1_ec2" {
  ami = "ami-0866a3c8686eaeeba"
  instance_type = "t2.micro"

  tags = {
    Name = "Lab 1 - Demo EC2"
  }
}