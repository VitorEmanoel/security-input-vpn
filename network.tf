resource "aws_vpc" "vpn_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "vpn_subnet" {
  vpc_id = aws_vpc.vpn_vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_internet_gateway" "vpn_gateway" {
  vpc_id = aws_vpc.vpn_vpc.id
}

resource "aws_route_table" "vpn_route_table" {
  vpc_id = aws_vpc.vpn_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vpn_gateway.id
  }
}

resource "aws_route_table_association" "vpn_route_table_association" {
  subnet_id = aws_subnet.vpn_subnet.id
  route_table_id = aws_route_table.vpn_route_table.id
}