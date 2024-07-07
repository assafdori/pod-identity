resource "aws_route_table" "public-route-table" {
	vpc_id = aws_vpc.vpc.id
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.igw.id
	}
	tags = {
		Name = "${var.env}-public-route-table"
	}
}

resource "aws_route_table_association" "public-subnet-1-association" {
	subnet_id = aws_subnet.public-subnet-1.id
	route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table_association" "public-subnet-2-association" {
	subnet_id = aws_subnet.public-subnet-2.id
	route_table_id = aws_route_table.public-route-table.id
}

resource "aws_route_table" "private-route-table-1" {
	vpc_id = aws_vpc.vpc.id
	route {
		cidr_block = "0.0.0.0/0"
		nat_gateway_id = aws_nat_gateway.nat-gw.id
	}
	tags = {
		Name = "${var.env}-private-route-table-1"
	}
}

resource "aws_route_table_association" "private-subnet-1-association" {
	subnet_id = aws_subnet.private-subnet-1.id
	route_table_id = aws_route_table.private-route-table-1.id
}

resource "aws_route_table" "private-route-table-2" {
	vpc_id = aws_vpc.vpc.id
	route {
		cidr_block = "0.0.0.0/0"
		nat_gateway_id = aws_nat_gateway.nat-gw.id
	}
	tags = {
		Name = "${var.env}-private-route-table-2"
	}
}


resource "aws_route_table_association" "private-subnet-2-association" {
	subnet_id = aws_subnet.private-subnet-2.id
	route_table_id = aws_route_table.private-route-table-2.id
}


