# CoreOS
variable "ami" {
  description = "the AMI to use"
  default = "ami-04a2766c"
}

resource "aws_instance" "master" {
  ami = "${var.ami}"
  instance_type = "m1.small"
}

resource "aws_instance" "worker" {
  ami = "${var.ami}"
  instance_type = "m1.small"
  count = 2
}
