resource "aws_internet_gateway" "play-env-gw" {
  vpc_id = aws_vpc.main.id
tags = {
    Name = "test-env-gw"
  }
}
