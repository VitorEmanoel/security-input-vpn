resource "aws_instance" "ubuntu_instance" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = aws_key_pair.vpn_key_pair
  subnet_id     = aws_subnet.vpn_subnet.id
  security_groups = [aws_security_group.vpn_security_group.name]

  associate_public_ip_address = true

  tags = {
    Name = "security-input-vpn"
  }
}