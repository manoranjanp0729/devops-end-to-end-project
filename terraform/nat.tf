resource "aws_eip" "nat_eip" {
  domain = "vpc"

  tags = {
    Name = "devops-2026-eip"
  }
}

resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = "devops-2026-nat"
  }
}
