resource "aws_security_group" "teetest-import-sg" {
  name        = "teetest-import-sg"
  description = "Security-group to test-EC2 instances using terraform import"
  vpc_id      = aws_vpc.teetest-vpc-import.id

  tags = {
    Name = "teetest-import-sg"
  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.teetest-import-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.teetest-import-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.teetest-import-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.teetest-import-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_security_group" "teetest-import-private-sg" {
  name        = "teetest-import-private-sg"
  description = "Security-group to test-EC2 instances using terraform import"
  vpc_id      = aws_vpc.teetest-vpc-import.id

  tags = {
    Name = "teetest-import-private-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh-priv" {
  security_group_id = aws_security_group.teetest-import-private-sg.id
  cidr_ipv4         = "10.0.1.0/24"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}
resource "aws_vpc_security_group_egress_rule" "allow_all_priv" {
  security_group_id = aws_security_group.teetest-import-private-sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
