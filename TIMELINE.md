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

### 📅 May 22 – RDS + IAM Completion

- [x] Create `modules/rds/`
- [x] Launch RDS instance (PostgreSQL/MySQL) in private subnet
- [x] Configure DB subnet group and parameter group
- [x] Secure with DB security group
- [x] Output DB endpoint
- [x] Finalize all IAM roles (least privilege)

---

### 📅 May 23 – Workspaces and Environment Isolation

- [x] Set up `environments/dev/` and `environments/prod/` folders
- [x] Deploy resources to both environments
- [x] Confirm state separation and output values
- [x] Test idempotency of plans across environments

---

### 📅 May 24 – Finalizing and Documentation

- [ ] Document entire project in `README.md`
- [ ] Include:
  - Setup instructions
  - Architecture description
  - Diagram
- [ ] Push all code to GitHub

---
