![codesnap](https://github.com/assafdori/pod-to-s3/blob/main/k9s-snap.png)

## Overview: EKS Pod Identity: Easily Attach IAM Roles to K8s pods 🎡

#### Objective 🏅 : Utilize EKS Pod Identity to easily attach IAM roles to Kubernetes pods.

#### Highlights 🏆 : EKS Pod Identity allows to assign IAM roles to pods without annotating the deployment pod spec.

#### Technologies 🛠️ :
- Python 
- boto3 
- Docker
- Kubernetes
- EKS
- IAM Services (roles, policies, IRSA)
- Terraform

#### Steps 📝 :

1. [x] Create a Python application that uploads a file to an S3 bucket.  
2. [x] Dockerize the application.  
3. [x] Create a Kubernetes deployment for the Python application.  
4. [x] Define all infrastructure as code (IaC) Terraform such as VPC, EKS, S3, IAM, Node Group, etc.  
5. [x] Install Pod Identity add-on on the EKS cluster.
5. [x] Define all the required IAM services (role, policy, pod-identity-attachment) for the Kubernetes deployment. 

#### Structure 🏗️ :
- **infrastructure/**: Terraform code for creating the EKS cluster, S3 bucket, IAM services, etc.  
- **kubernetes/**: Kubernetes deployment for the Python application & service account. 
- **python-app/**: Python application that uploads a file to an S3 bucket.  
