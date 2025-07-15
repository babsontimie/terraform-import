resource "aws_route_table_association" "teetest-pub-rtb-assoc" {
  subnet_id      = aws_subnet.teetest-import-public-subnet.id
  route_table_id = aws_route_table.teetest-import-public-rtb.id
}

resource "aws_route_table_association" "teetest-priv-rtb-assoc" {
  subnet_id      = aws_subnet.teetest-import-private-subnet.id
  route_table_id = aws_route_table.teetest-import-private-rtb.id
}
