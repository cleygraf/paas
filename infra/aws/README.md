# PaaS on AWS


## EKS

### Create an EKS cluster

### IRSA 

#### Create an IAM policy

See [# Configuring a Kubernetes service account to assume an IAM role](https://docs.aws.amazon.com/eks/latest/userguide/associate-service-account-role.html)

Execute:
`aws iam create-policy --policy-name gitlab-policy --policy-document file://./infra/aws/config/gitlab_iam_profile.json --description "GitLab ci/cd policy"`

