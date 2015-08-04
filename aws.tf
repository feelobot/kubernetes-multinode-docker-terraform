# CoreOS
variable "ami" {
  description = "CoreOS stable 367.1.1 (PV)"
  default = "ami-04a2766c"
}

resource "aws_instance" "master" {
  ami = "${var.ami}"
  instance_type = "m1.small"
  user_data = "${file(\"master.yml\")}"
}

resource "aws_instance" "worker" {
  ami = "${var.ami}"
  instance_type = "m1.small"
  count = 2
  user_data = "${file(\"worker.yml\")}"
}
