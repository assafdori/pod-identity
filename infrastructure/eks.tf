resource "aws_eks_cluster" "cluster" {
  name     = "${var.env}-${var.cluster-name}"
  role_arn = aws_iam_role.cluster.arn
  version  = "1.30"
  vpc_config {
    security_group_ids = [aws_security_group.eks-cluster.id]
    subnet_ids = [
      aws_subnet.public-subnet-1.id,
      aws_subnet.public-subnet-2.id,
    ]
  }
}


