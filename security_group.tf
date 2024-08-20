resource "aws_security_group" "vpn_security_group" {
  name        = "vpn_security_group"
  description = "Enable SSH and VPN"
  vpc_id      = aws_vpc.vpn_vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}