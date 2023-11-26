# PaaS on AWS

## Requirements

- _aws-cli_ and _eksctl_ installed locally
- _aws-cli_ is authenticated and user has required permissions (tbd)

## EKS

Adjust region to your preferences. As I am based in Germany, I default to Frankfurt (`eu-central-1`).

### Create an EKS cluster

Execute:
`eksctl create cluster --name gitlab-cluster --region eu-central-1 --with-oidc`

See [Creating an IAM OIDC provider for your cluster](https://docs.aws.amazon.com/eks/latest/userguide/enable-iam-roles-for-service-accounts.html)

Run:

- `cluster_name="gitlab-cluster"`
- `oidc_id="$(aws eks describe-cluster --name $cluster_name --query "cluster.identity.oidc.issuer" --output text | cut -d '/' -f 5)"`
- `echo $oidc_id`

To determine whether an IAM OIDC provider with your cluster's issuer ID is already in your account, run:
`aws iam list-open-id-connect-providers | grep $oidc_id | cut -d "/" -f4`

If there is no output create an IAM OIDC identity provider for your cluster with the following command:

`eksctl utils associate-iam-oidc-provider --cluster $cluster_name --approve`

### Create runners

Create a project specific runner through the GitLab web ui. Use the tag `aws` for this runner. Save the _runner token_ locally for later use (e. g. in 1Password, treat the _runner token_ like a password!).

Add the GitLab Helmrepository:
`helm repo add gitlab https://charts.gitlab.io`

Create the required namespace:
`kubectl create namespace gitlab-ns`

Execute:
`helm install --namespace gitlab-ns gitlab-runner --set runnerRegistrationToken="YOUR-RUNNER-TOKEN" -f ./infra/aws/config/helm_runners_values.yaml gitlab/gitlab-runner`

Verify running pod in the namespace _gitlab-ns_:
`kubectl get pods -n "gitlab-ns"`

### IRSA 

#### Create an IAM policy

See

- [# Configuring a Kubernetes service account to assume an IAM role](https://docs.aws.amazon.com/eks/latest/userguide/associate-service-account-role.html)
- [Amazon ECR Docker Credential Helper](https://github.com/awslabs/amazon-ecr-credential-helper)

To create an IAM policy _gitlab-policy_ execute :
`aws iam create-policy --policy-name gitlab-policy --policy-document file://./infra/aws/config/gitlab_iam_profile.json --description "GitLab ci/cd policy"`

Create an IAM role and associate it with a Kubernetes service account (adjust arn according output of previous command,):
`eksctl create iamserviceaccount --name gitlab-runner --namespace gitlab-ns --cluster gitlab-cluster --role-name gitlab-role --attach-policy-arn arn:aws:iam::111122223333:policy/gitlab-policy --approve --override-existing-serviceaccounts`

Confirm that the IAM role's trust policy is configured correctly:
`aws iam get-role --role-name gitlab-role --query Role.AssumeRolePolicyDocument`

Confirm that the policy that you attached to your role in a previous step is attached to the role:
`aws iam list-attached-role-policies --role-name gitlab-role --query "AttachedPolicies[].PolicyArn" --output text`

View the default version of the policy:
`aws iam get-policy --policy-arn $(aws iam list-attached-role-policies --role-name gitlab-role --query "AttachedPolicies[].PolicyArn" --output text)`

Show details of the service account:
`kubectl describe serviceaccount gitlab-runner -n gitlab-ns`

Check already running _gitlab-runner_ pods:
`kubectl get pods -n gitlab-ns`

View the ARN of the IAM role that these pods are using:
`kubectl describe pod YOUR-POD-NAME -n gitlab-ns| grep AWS_ROLE_ARN:`

If the proper ARN isn't attached (or no ARN at all), restart **each** _gitlab runners_ to get the IAM role binding attached:
`kubectl get pod YOUR-POD-NAME -n gitlab-ns  -o yaml | kubectl replace --force -f -`

Verify if new _gitlab-runner_ pods have picked up the IAM role:
    1. `kubectl get pods -n gitlab-ns`
    2. `kubectl describe pod YOUR-NEW-POD-NAME -n gitlab-ns| grep AWS_ROLE_ARN:`

### Create ECR repository

See [Using Amazon ECR with the AWS CLI](Using Amazon ECR with the AWS CLI)

Create repository:
`aws ecr create-repository --repository-name gitlab-repo --image-scanning-configuration scanOnPush=true`

Store the `repositoryUri` value in the GitLab ci/cd variable `AWS_REPO_URI`.

### Fargate

#### Task definition

Create a task definition and specify "container port" `8080`  and the repository url with the tag `latest`.

#### ECS Cluster

Create a cluster an keep "Infrastructure" `AWS Fargate (serverless)`.

#### Service

Create a service with these changes to the defaults:

- "Compute options" -> `Launch type`
- "Load balancer type" -> `Application Load Balancer`
