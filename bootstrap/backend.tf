
terraform {
  backend "s3" {
    bucket         = var.bucket_name
    key            = "mykey/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.lock_table_name
    encrypt        = true
  }
}
