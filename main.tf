

resource "aws_s3_bucket" "tfstate_bucket" {
  bucket = var.bucket_name


  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tfstate_bucket_enc" {
  bucket = aws_s3_bucket.tfstate_bucket.id

  rule {
    bucket_key_enabled = false
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_versioning" "tfstate_bucket_ver" {
  bucket = aws_s3_bucket.tfstate_bucket.id

  versioning_configuration {
    status = "Suspended"
  }
}
# resource "aws_dynamodb_table" "tfstate_bucket_lock" {
#   name         = var.lock_table_name
#   billing_mode = "PAY_PER_REQUEST"
#   hash_key     = "LockID"

#   attribute {
#     name = "LockID"
#     type = "S"
#   }

#   tags = {
#     Name = "TerraformStateLock"
#   }
# }
