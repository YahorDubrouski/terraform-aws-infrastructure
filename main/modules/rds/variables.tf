variable "name_prefix" {
  type        = string
  description = "Prefix for all named resources"
  default     = "terraform-aws-infrastructure-rds"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID for RDS security group"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of private subnet IDs for DB subnet group"
}

variable "allowed_sg_ids" {
  type        = list(string)
  description = "Security groups allowed to access the database"
}

variable "instance_type" {
  type        = string
  default     = "db.t3.micro"
}

variable "storage" {
  type        = number
  default     = 10
}

variable "db_username" {
  type        = string
}

variable "db_password" {
  type        = string
  sensitive   = true
}

variable "engine_version" {
  type        = string
  default     = "17.2"
}

variable "port" {
  type        = number
  default     = 5432
}
