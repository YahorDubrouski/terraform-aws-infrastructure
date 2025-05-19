## Implementation Plan

### 1. Project Initialization
- [ ] Create project root with `main.tf`, `variables.tf`, `outputs.tf`, and `.gitignore`
- [ ] Configure `provider` block for AWS region and credentials
- [ ] Define `terraform` block with S3 remote backend and DynamoDB state locking

### 2. Remote Backend Setup
- [ ] Manually create S3 bucket and DynamoDB table (or provision them separately)
- [ ] Define `backend.tf` to enable remote state management
- [ ] Run `terraform init` and validate remote backend setup

### 3. VPC Module
- [ ] Create `modules/vpc/` with:
  - Custom VPC block
  - Public and private subnets
  - Internet gateway
  - NAT gateway
  - Route tables and associations
- [ ] Expose key outputs: VPC ID, subnet IDs, route table IDs

### 4. EC2 Module
- [ ] Create `modules/ec2/` with:
  - EC2 instance resource
  - Key pair and AMI variable
  - Security group allowing SSH and HTTP
  - user_data script for web or package setup
- [ ] Output public IP and instance ID

### 5. RDS Module
- [ ] Create `modules/rds/` with:
  - RDS instance in private subnet
  - DB subnet group and parameter group
  - Security group with access from EC2 subnet
  - Password stored using `sensitive = true` in output

### 6. S3 Module
- [ ] Create `modules/s3/` with:
  - S3 bucket for general or app use
  - Bucket policy (optional)
  - Lifecycle configuration and versioning

### 7. IAM Configuration
- [ ] Define IAM role and policy for EC2 to access S3
- [ ] Use `assume_role_policy` and attach inline policies
- [ ] Apply least-privilege principles

### 8. Environment Structure
- [ ] Create `environments/dev/` and `environments/prod/` folders
- [ ] Use `terraform workspace` to manage and deploy isolated environments
- [ ] Verify state separation and reproducibility

### 9. Final Integration
- [ ] Wire all modules together from `main.tf` with required inputs
- [ ] Use input validation, variables, locals, and outputs cleanly
- [ ] Add README and basic diagram
- [ ] Test `terraform plan` and `apply` in both environments

### 10. Documentation and Cleanup
- [ ] Write full README with usage instructions
- [ ] Add `terraform-docs` output if desired
- [ ] Push project to GitHub
- [ ] Capture and include CLI screenshots or diagrams
