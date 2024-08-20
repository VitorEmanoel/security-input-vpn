resource "aws_vpc" "vpn_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "vpn_subnet" {
  vpc_id = aws_vpc.vpn_vpc.id
  cidr_block = "10.0.1.0/24"
}

resource "aws_internet_gateway" "vpn_gateway" {
  
}