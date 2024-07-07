resource "aws_security_group" "eks-cluster" {
	name = "${var.env}-${var.cluster-name}-sg"
	vpc_id = aws_vpc.vpc.id
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
	ingress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
	tags = {
		Name = "${var.env}-${var.cluster-name}-sg"
	}
}
