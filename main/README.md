## 📦 Project Overview

This directory contains the main Terraform configuration that provisions core AWS infrastructure to support real-world development, feature testing, and DevOps automation.

---

## 🧱 Resources Created

### 🕸️ Networking (via `modules/vpc`)
- **VPC**: CIDR block `10.0.0.0/16`
- **2 Public Subnets**: Across two Availability Zones
- **2 Private Subnets**: For isolated compute resources
- **Internet Gateway**: Enables internet access for public subnets and NAT
- **Optional NAT Gateway**: Provides outbound internet for private subnets (controlled via `create_nat_gateway`)
- **Route Tables**: Separate tables for public and private routing

### 🖥️ Compute
- **Bastion Host (Public EC2)**
    - Deployed in a public subnet with a public IP
    - Used as a secure jump box to access private instances
- **NAT Test Instance (Private EC2)**
    - Deployed in a private subnet without a public IP
    - Used to verify that outbound internet access via NAT is functional
    - Only deployed when `enable_nat_test = true`

### 🔑 SSH Access
- **EC2 Key Pair**
    - Public key uploaded to AWS via Terraform
    - Private key created locally (not managed by Terraform)
    - Used for SSH access to both bastion and test instances

### 🔒 Security Groups
- **Bastion SSH SG**
    - Allows inbound SSH (`port 22`) from your specific IP address
- **Private EC2 SG**
    - Allows inbound SSH only from the bastion security group
    - Allows all outbound traffic (e.g., internet access via NAT Gateway)

---
