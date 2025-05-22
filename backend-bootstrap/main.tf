resource "aws_s3_bucket" "terraform_state" {
  bucket        = var.bucket_name
  force_destroy = var.force_destroy

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "bootstrap"
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.lock_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Terraform Locks Table"
    Environment = "bootstrap"
  }
}
