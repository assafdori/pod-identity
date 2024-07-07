resource "aws_iam_role" "cluster" {
	name = "${var.env}-${var.cluster-name}-role"
	assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
	"Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "cluster-AmazonEKSClusterPolicy" {
	role = aws_iam_role.cluster.name
	policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

resource "aws_iam_role_policy_attachment" "cluster-AmazonEKSServicePolicy" {
	role = aws_iam_role.cluster.name
	policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
}

resource "aws_iam_role_policy_attachment" "cluster-AmazonEKSVPCResourceControllerPolicy" {
	role = aws_iam_role.cluster.name
	policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
}
