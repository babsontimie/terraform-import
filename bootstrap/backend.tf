
terraform {
  backend "s3" {
    bucket          = var.bucket_name
    key             = "mykey/terraform.tfstate"
    region          = var.aws_region
    lock_table_name = teetest-import-LockID
    #dynamodb_table = var.lock_table_name
    encrypt = true
  }
}
