resource "aws_s3_bucket" "b" {
  bucket = "${var.bucketname}"
  acl    = "private"

  tags = {
    product_id = "test_product"
  }
}
