resource "aws_key_pair" "vpn_key_pair" {
    key_name = "id_vpn"
    public_key = var.public_key
}