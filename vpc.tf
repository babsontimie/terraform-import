resource "aws_vpc" "teetest-vpc-import" {
  cidr_block = var.vpc_cidr_block
  tags = {
    "Name" = "teetest-vpc-import"
  }
}
