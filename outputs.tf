output "backend_bucket" {
  value = aws_s3_bucket.tfstate_bucket.arn
}

output "instance_public-ip" {
  value = aws_instance.teetest-import-public-inst.public_ip
}
