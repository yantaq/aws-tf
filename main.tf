provider "aws" {
  region  = "us-west-1"
  profile = "default"
}


terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.55.0"
    }
  }
}

resource "aws_instance" "test" {
  ami = "ami-01f87c43e618bf8f0"
  instance_type = "t2.micro"
}
