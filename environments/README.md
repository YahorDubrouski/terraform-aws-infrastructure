## 🌍 Environments

This directory contains environment-specific configurations used to deploy the same infrastructure with tailored settings for each environment (e.g., `dev`, `prod`).

Each subfolder (`dev/`, `prod/`) includes:
- `backend.tf` – defines a separate remote state path
- `terraform.tfvars` – contains environment-specific variable overrides

This setup allows for safe, repeatable, and isolated deployments.

---

## 🚀 How to Apply Infrastructure

### 📦 1. Development Environment

```bash
cd ../main
terraform init -backend-config=../environments/dev/backend.tf
terraform plan -var-file=../environments/dev/terraform.tfvars
terraform apply -var-file=../environments/dev/terraform.tfvars
```

### 📦 2. Production Environment

```bash
cd ../main
terraform init -backend-config=../environments/prod/backend.tf
terraform plan -var-file=../environments/prod/terraform.tfvars
terraform apply -var-file=../environments/prod/terraform.tfvars
```
