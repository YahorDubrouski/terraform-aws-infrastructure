// Global variables
variable "aws_region" {
  description = "The AWS region to deploy the infrastructure in"
  type        = string
  default     = "eu-central-1"
}

variable "tag_name_prefix" {
  type        = string
  description = "Prefix for all resource tag names"
  default     = "terraform-aws-infrastructure-main"
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
}

// EC2 instance variables
variable "create_nat_gateway" {
  description = "Whether to create a NAT Gateway"
  type        = bool
  default     = false
}

variable "enable_nat_test" {
  description = "Enable a temporary EC2 to test NAT Gateway access"
  type        = bool
  default     = false
}

variable "ami_id" {
  description = "AMI ID for NAT test EC2 instance"
  type        = string
}

variable "shh_access_ip" {
  type        = string
  description = "Your IP for SSH access (CIDR format)"
}

// Networking variables
variable "create_igw" {
  description = "Whether to create an Internet Gateway"
  type        = bool
  default     = true
}
