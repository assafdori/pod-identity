variable "region" {
 description = "The region in which the resources will be created"
 type       = string
 default    = "us-east-1"
}

variable "env" {
 description = "Environment name"
 type       = string
 default    = "dev"
}


variable "vpc-name" {
 description = "Environment name"
 type       = string
 default    = "dev-vpc"
}


variable "cluster-name" {
 description = "Environment name"
 type       = string
 default    = "cluster"
}
