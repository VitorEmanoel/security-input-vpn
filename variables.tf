variable "public_key" {
  type = string
}

variable "ec2_ami" {
  type = string
  default = "ami-01a38093d387a7497"
}

variable "ec2_instance_type" {
  type = string
  default = "t2.micro"
}
