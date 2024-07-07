resource "aws_eip" "nat-eip" {
	tags = {
		Name = "${var.env}-nat-eip"
	}
}
