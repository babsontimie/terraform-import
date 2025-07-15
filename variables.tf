variable "aws_region" {
  type        = string
  description = "This is the AWS region"

}
variable "bucket_name" {
  type        = string
  description = "This is the S3 bucket name"

}
variable "lock_table_name" {
  type        = string
  description = "This is the DynamoDB lock table name"

}

variable "vpc_cidr_block" {
  type        = string
  description = "This is the vpc cidr_block"

}
variable "public_subnet_cidr_block" {
  type        = string
  description = "This is the public subnet cidr_block"

}
variable "private_subnet_cidr_block" {
  type        = string
  description = "This is the private subnet cidr_block"
}
