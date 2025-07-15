resource "aws_route" "teetest-import-public-route" {
  route_table_id         = aws_route_table.teetest-import-public-rtb.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.teetest-import-igw.id

}
