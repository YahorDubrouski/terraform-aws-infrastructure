# Terraform Project Timeline (May 20–25)

This plan outlines the daily implementation schedule for building and publishing a complete Terraform AWS infrastructure project by May 25.

## Timeline and Daily Tasks

---

### 📅 May 20 – Project Initialization

- [x] Create root project files: `main.tf`, `variables.tf`, `outputs.tf`, `backend.tf`
- [x] Configure AWS provider with region and credentials
- [x] Set up remote backend: S3 bucket + DynamoDB table
- [x] Define `terraform` block for backend
- [x] Run `terraform init` and test backend connection

---

### 📅 May 21 – VPC and Base Networking

- [x] Create `modules/vpc/` module
- [x] Implement:
  - VPC resource
  - Public and private subnets
  - Internet gateway and NAT gateway
  - Route tables and associations
- [x] Output subnet and VPC IDs
- [x] Test `terraform plan` for network module

---

### 📅 May 22 – EC2 + S3 + IAM Basics

- [ ] Create `modules/ec2/` and `modules/s3/`
- [ ] Deploy EC2 instance:
  - Select AMI, instance type, key pair
  - Create security group for SSH/HTTP
  - Use `user_data` to configure server
- [ ] Provision S3 bucket with versioning or lifecycle rule
- [ ] Define IAM role for EC2 to access S3
- [ ] Test apply with EC2 connected to S3

---

### 📅 May 23 – RDS + IAM Completion

- [ ] Create `modules/rds/`
- [ ] Launch RDS instance (PostgreSQL/MySQL) in private subnet
- [ ] Configure DB subnet group and parameter group
- [ ] Secure with DB security group
- [ ] Output DB endpoint
- [ ] Finalize all IAM roles (least privilege)

---

### 📅 May 24 – Workspaces and Environment Isolation

- [ ] Set up `environments/dev/` and `environments/prod/` folders
- [ ] Use `terraform workspace` to manage environments
- [ ] Deploy resources to both workspaces
- [ ] Confirm state separation and output values
- [ ] Test idempotency of plans across environments

---

### 📅 May 25 – Finalizing and Documentation

- [ ] Clean up and validate all modules and outputs
- [ ] Document entire project in `README.md`
- [ ] Include:
  - Setup instructions
  - Architecture description
  - Screenshot or diagram
- [ ] Push all code to GitHub
- [ ] (Optional) Run `terraform-docs` to generate module documentation

---
