resource "aws_db_subnet_group" "postgres" {
  name       = "${var.name_prefix}-db-subnet-group"
  subnet_ids = var.subnet_ids
  tags = {
    Name = "${var.name_prefix}-db-subnet-group"
  }
}

resource "aws_security_group" "postgres" {
  name        = "${var.name_prefix}-postgres-sg"
  description = "Allow inbound from app or bastion"
  vpc_id      = var.vpc_id

  ingress {
    from_port       = var.port
    to_port         = var.port
    protocol        = "tcp"
    security_groups = var.allowed_sg_ids
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "postgres" {
  identifier              = "${var.name_prefix}-db"
  engine                  = "postgres"
  instance_class          = var.instance_type
  username                = var.db_username
  password                = var.db_password
  allocated_storage       = var.storage
  db_subnet_group_name    = aws_db_subnet_group.postgres.name
  vpc_security_group_ids  = [aws_security_group.postgres.id]
  skip_final_snapshot     = true
  publicly_accessible     = false
  deletion_protection     = var.deletion_protection
  apply_immediately       = true
  multi_az                = var.multi_az
  engine_version          = var.engine_version
  port                    = var.port
}
