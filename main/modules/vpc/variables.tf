variable "tag_name_prefix" {
  type        = string
  description = "Prefix for all resource tag names"
  default     = "terraform-aws-infrastructure-vpc"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "CIDR block for the VPC"
}

variable "availability_zones" {
  type        = list(string)
  description = "AZs to use"
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "create_nat_gateway" {
  type        = bool
  default     = false
  description = "Whether to create NAT Gateway. Note - NAT Gateway can be expensive."
}

variable "create_igw" {
  type        = bool
  default     = true
  description = "Whether to create Internet Gateway"
}
