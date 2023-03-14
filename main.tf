terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.1.4"
}

provider "aws" {
  region  = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  key_name = var.key_name
  instance_type = var.instance_type
  security_groups = [ var.security_groups ]

  tags = {
    Name = var.instance_name
  }
}
