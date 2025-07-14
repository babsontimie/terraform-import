variable "aws_region" {
  type        = string
  description = "This is the AWS region"
  default     = "us-east-1"
}
variable "bucket_name" {
  type        = string
  description = "This is the S3 bucket name"
  default     = "tee-testimport-bucket"
}
variable "lock_table_name" {
  type        = string
  description = "This is the DynamoDB lock table name"
  default     = "dynatable"
}
