terraform {
  backend "s3" {
    bucket         = "yahor-dubrouski-terraform-aws-infrastructure-tfstate"
    key            = "global/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
