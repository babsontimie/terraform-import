resource "aws_subnet" "teetest-import-public-subnet" {
  vpc_id     = aws_vpc.teetest-vpc-import.id
  cidr_block = var.public_subnet_cidr_block

  tags = {
    Name = "teetest-import-public-subnet"
  }
}

resource "aws_subnet" "teetest-import-private-subnet" {
  vpc_id     = aws_vpc.teetest-vpc-import.id
  cidr_block = var.private_subnet_cidr_block

  tags = {
    Name = "teetest-import-private-subnet"
  }
}
