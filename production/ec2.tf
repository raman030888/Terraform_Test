data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami                    = "${data.aws_ami.ubuntu.id}"
  instance_type          = "${var.ec2type}"
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  iam_instance_profile   = "${aws_iam_instance_profile.test_profile.name}"
  subnet_id              = "${aws_subnet.example1.id}"

  tags = {
    Name       = "${var.instancename}"
    product_id = "test_product"
  }
}
