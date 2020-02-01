data "aws_vpc" "selected" {
  id = "${var.vpc_id}"
}

resource "aws_subnet" "example1" {
  vpc_id            = "${data.aws_vpc.selected.id}"
  availability_zone = "${var.region}"
  cidr_block        = "${var.subnetcidr1}"
  tags = {
    Name = "${var.subnetname1}"
    product_id = "test_product"
  }
}

resource "aws_subnet" "example2" {
  vpc_id            = "${data.aws_vpc.selected.id}"
  availability_zone = "${var.region}"
  cidr_block        = "${var.subnetcidr2}"
  tags = {
    Name = "${var.subnetname2}"
    product_id = "test_product"
  }
}
