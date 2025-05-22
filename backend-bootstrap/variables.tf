variable "aws_region" {
  description = "The AWS region to deploy backend infrastructure in"
  type        = string
  default     = "eu-central-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket to store Terraform state"
  type        = string
}

variable "lock_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "terraform-locks"
}

variable "force_destroy" {
  description = "Whether to force destroy all bucket objects on bucket destroy (useful for dev environments)"
  type        = bool
  default     = true
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use for the S3 bucket"
  type        = string
  default     = "AES256"
}
