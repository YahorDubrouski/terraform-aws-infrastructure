output "nat_test_private_ip" {
  value       = try(aws_instance.nat_test[0].private_ip, "")
  description = "Private IP of the NAT test instance"
}

output "bastion_public_ip" {
  value       = aws_instance.bastion.public_ip
  description = "Public IP of the Bastion host"
}

output "vpc_id" {
  value       = module.vpc.vpc_id
  description = "VPC ID"
}

output "rds_endpoint" {
  value = module.rds.rds_endpoint
}
