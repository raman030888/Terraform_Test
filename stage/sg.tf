resource "aws_security_group" "allow_tls" {
  name        = "${var.sgname}"
  vpc_id      = "${data.aws_vpc.selected.id}"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #add a CIDR block here
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
  tags = {
    product_id = "test_product"
  }
}
