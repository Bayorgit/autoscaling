terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

# provider "aws" {
#   profile = "default"
#   region  = "us-east-1"
# }

resource "aws_instance" "bayo_infra" {
  ami           = "ami-0ff8a91507f77f867"
  instance_type = "t2.micro"

  tags = {
    Name = "bayoinfra-instance"
  }
}