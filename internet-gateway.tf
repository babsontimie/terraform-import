
resource "aws_internet_gateway" "teetest-import-igw" {
  vpc_id = aws_vpc.teetest-vpc-import.id

  tags = {
    Name = "teetest-import-igw"
  }
}

resource "aws_internet_gateway_attachment" "teetest-import-igw-attach" {
  internet_gateway_id = aws_internet_gateway.teetest-import-igw.id
  vpc_id              = aws_vpc.teetest-vpc-import.id
}


