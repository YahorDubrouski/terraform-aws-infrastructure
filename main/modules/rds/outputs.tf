output "rds_endpoint" {
  value       = aws_db_instance.postgres.endpoint
  description = "RDS connection endpoint"
}

output "rds_sg_id" {
  value       = aws_security_group.postgres.id
}

output "instance_profile_name" {
  value       = aws_iam_instance_profile.ec2.name
}
