# Backend Bootstrap

This directory contains Terraform code to provision the S3 bucket and DynamoDB table required for the remote backend. It's isolated to ensure that the backend resources are managed separately from the main infrastructure.

## 📦 Resources Created

- S3 bucket for storing Terraform state
- DynamoDB table for state locking
- Bucket versioning and encryption

## 🚀 Setup Guide

### 1. Initialize Terraform

```bash
cd backend-bootstrap
terraform init
```

### 2. Create `terraform.tfvars`

Create a `terraform.tfvars` file to set the bucket name:

```bash
echo 'bucket_name = "your-bucket-name"' > terraform.tfvars
```

### 3. Plan and Apply

Run the following commands to review and apply the changes:

```bash
terraform plan
terraform apply
```
