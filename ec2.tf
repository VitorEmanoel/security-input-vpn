resource "aws_instance" "ubuntu_instance" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  key_name      = aws_key_pair.vpn_key_pair.key_name
  subnet_id     = aws_subnet.vpn_subnet.id
  
  vpc_security_group_ids = [ aws_security_group.vpn_security_group.id ]

  associate_public_ip_address = true

  depends_on = [ aws_security_group.vpn_security_group ]

  tags = {
    Name = "security-input-vpn"
  }
}