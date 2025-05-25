module "rds" {
  source = "./modules/rds"

  name_prefix      = var.name_prefix
  vpc_id           = module.vpc.vpc_id
  subnet_ids       = module.vpc.private_subnet_ids
  allowed_sg_ids   = [aws_security_group.private_ec2.id]

  instance_type    = var.rds_instance_type
  storage          = var.rds_storage
  db_username      = var.rds_username
  db_password      = var.rds_password
  engine_version   = var.rds_engine_version
  port             = var.rds_port
}
