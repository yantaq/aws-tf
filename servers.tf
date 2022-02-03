resource "aws_instance" "ec2-instance" {
  ami = var.ami_id
  instance_type = "t2.micro"
  key_name = var.ami_key_pair_name
  security_groups = [aws_security_group.ingress_play.id]
tags = {
    Name = "ubuntu"
  }
subnet_id = aws_subnet.subnet_1.id
}
