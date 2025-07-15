resource "aws_route_table" "teetest-import-public-rtb" {
  vpc_id = aws_vpc.teetest-vpc-import.id

  # since this is exactly the route AWS will create, the route will be adopted
  #   route {
  #     cidr_block = var.public_subnet_cidr_block
  #     gateway_id = aws_internet_gateway.teetest-import-igw.id
  #   }
  tags = {
    "Name" = "teetest-import-public-rtb"
  }
}

resource "aws_route_table" "teetest-import-private-rtb" {
  vpc_id = aws_vpc.teetest-vpc-import.id

  # since this is exactly the route AWS will create, the route will be adopted
  #   route {
  #     cidr_block = var.private_subnet_cidr_block
  #     gateway_id = "local"
  #   }
  tags = {
    "Name" = "teetest-import-private-rtb"
  }
}
