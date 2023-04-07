resource "aws_instance" "linux" {
  ami = "ami-00077e3fed5089981"
  instance_type = var.instance_type
  subnet_id = aws_subnet.private.id
  iam_instance_profile = aws_iam_instance_profile.ssm-allow.name

  tags = {
    Name = var.tag_name
  }
}

