terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.3"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0ab4d1e9cf9a1215a"
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-vm"
  }

}

