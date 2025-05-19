# Terraform AWS Infrastructure Project

## Overview

This project demonstrates a secure, modular AWS infrastructure provisioned using Terraform. It follows production-grade DevOps and Infrastructure as Code (IaC) principles, with a focus on reusability, environment separation, and remote state management.

Key components include:
- Modular Terraform architecture
- Multi-environment support (dev and prod)
- Remote backend with S3 and DynamoDB
- Core AWS services: VPC, EC2, RDS, S3, IAM

---

## Objectives

- Apply best practices in Terraform and AWS infrastructure automation
- Demonstrate Terraform module composition, lifecycle, and environment control
- Showcase production-ready architecture for cloud infrastructure deployment

---

## Architecture

The infrastructure includes:

- Custom VPC with public and private subnets
- EC2 instance in a public subnet with secure access
- RDS instance in a private subnet
- S3 bucket used for remote state and optionally data storage
- IAM roles and policies for least-privilege access control
- Workspace-based multi-environment deployment (dev, prod)

---

## Project Structure

```
terraform-aws-infrastructure/
├── modules/
│ ├── vpc/
│ ├── ec2/
│ ├── rds/
│ └── s3/
├── environments/
│ ├── dev/
│ └── prod/
├── backend/
│ └── backend.tf
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
```

---

## Usage

```sh
# Initialize Terraform with backend
terraform init

# Switch to environment
terraform workspace new dev
terraform workspace select dev

# Deploy infrastructure
terraform plan
terraform apply
```
