data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "teetest-import-public-inst" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  user_data = <<-EOF
#!/usr/bin/env bash

# Non-root part:
echo "Doing user‑level stuff..."

# Root‑only block:
sudo bash -c 'apt-get update -y && \
               apt-get install -y apache2 && \
               systemctl start apache2 && \
               systemctl enable apache2 && \
               echo "<h1>Apache on $(hostname -f)</h1>" > /var/www/html/index.html'
EOF
  tags = {
    Name = "teetest-import-public-inst"
  }
}
