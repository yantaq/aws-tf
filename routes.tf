resource "aws_route_table" "route-table-play-env" {
  vpc_id = aws_vpc.main.id
route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.play-env-gw.id
  }
tags = {
    Name = "play_gateway"
  }
}
resource "aws_route_table_association" "subnet-association" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.route-table-play-env.id
}
