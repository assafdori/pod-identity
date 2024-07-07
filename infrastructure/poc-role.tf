resource "aws_iam_role" "poc-role" {
  name = "${var.env}-poc-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = [
          "sts:AssumeRole",
          "sts:TagSession"

        ]
        Principal = {
          "Service" = "pods.eks.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "poc-policy" {
  name = "${var.env}-poc-policy"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "s3:ListBucket",
          "s3:GetObject",
          "s3:PutObject",
          "s3:ListAllMyBuckets",
          "s3:DeleteObject"
        ]
        Resource = ["*"]
      }
    ]
  })

}

resource "aws_iam_role_policy_attachment" "poc-policy-attachment" {
  role       = aws_iam_role.poc-role.name
  policy_arn = aws_iam_policy.poc-policy.arn
}

resource "aws_eks_pod_identity_association" "poc-role-association" {
  cluster_name    = aws_eks_cluster.cluster.name
  namespace       = "default"
  service_account = "bucket-sa"
  role_arn        = aws_iam_role.poc-role.arn

}
