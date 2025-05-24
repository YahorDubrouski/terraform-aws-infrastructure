resource "aws_security_group" "private_ec2" {
  name   = "private-ec2"
  vpc_id = module.vpc.vpc_id

  ingress {
    description     = "SSH from bastion"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    security_groups = [aws_security_group.public_ssh.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "private-ec2"
  }
}

resource "aws_security_group" "public_ssh" {
  name   = "public-ssh"
  vpc_id = module.vpc.vpc_id

  ingress {
    description = "Allow SSH from your IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.shh_access_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
