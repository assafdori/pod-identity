resource "aws_eks_addon" "pod-identity" {
	cluster_name = aws_eks_cluster.cluster.name
	addon_name = "eks-pod-identity-agent"
	addon_version = "v1.3.0-eksbuild.1"
}
