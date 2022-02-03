resource "aws_vpc" "main" {
  cidr_block           = var.main_vpc_cidr
  instance_tenancy     = "default"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "playground"
  }
}

resource "aws_eip" "it_test" {
  instance = aws_instance.ec2-instance.id
  vpc = true
}
