resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.nat-eip.id
  subnet_id     = aws_subnet.public-subnet-1.id
  tags = {
		Name = "${var.env}-nat-gw"
  }
  depends_on = [aws_internet_gateway.igw]
}

