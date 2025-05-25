terraform {
  backend "s3" {
    bucket         = "yahor-dubrouski-terraform-aws-infrastructure-tfstate"
    key            = "prod/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-locks-prod"
    encrypt        = true
  }
}
