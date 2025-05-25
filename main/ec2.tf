resource "aws_key_pair" "deployer" {
  key_name   = "terraform-deployer-key"
  public_key = file(var.public_key_path)
}

resource "aws_instance" "nat_test" {
  count                       = var.create_nat_gateway && var.enable_nat_test ? 1 : 0
  ami                         = var.ami_id
  instance_type               = "t3.micro"
  subnet_id                   = module.vpc.private_subnet_ids[0]
  vpc_security_group_ids      = [aws_security_group.private_ec2.id]
  key_name                    = aws_key_pair.deployer.key_name
  associate_public_ip_address = false
  iam_instance_profile = module.rds.instance_profile_name

  tags = {
    Name = "${var.tag_name_prefix}-nat-test"
  }
}

resource "aws_instance" "bastion" {
  ami                         = var.ami_id
  instance_type               = "t3.micro"
  subnet_id                   = module.vpc.public_subnet_ids[0]
  vpc_security_group_ids      = [aws_security_group.public_ssh.id]
  associate_public_ip_address = true
  key_name                    = aws_key_pair.deployer.key_name
  iam_instance_profile = module.rds.instance_profile_name

  tags = {
    Name = "${var.tag_name_prefix}-bastion"
  }
}
