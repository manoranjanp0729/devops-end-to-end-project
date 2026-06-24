resource "aws_instance" "nginx_server" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  subnet_id = aws_subnet.private_subnet.id

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "nginx-server"
  }

  associate_public_ip_address = false

  metadata_options {
    http_tokens = "required"
  }

  lifecycle {
    ignore_changes = [ami]
  }
}
