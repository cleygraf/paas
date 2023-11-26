# PaaS on Google Cloud

PaaS can be deployed to Google Cloud. We will use Google Cloud Build to create a container with NGINX and the slides as html files. Google's Container Registry will store the container and Google Cloud Run finally will serve the slides to users.

PaaS requires you to have at least one project created in Google Cloud. If you create two projects, you will be able to split the review apps from production. But this is optional, it is absolutely feasible to deploy the review app and the production workload into one Google Cloud project.

## Requirements

- A clone/fork of this project
- At minimum one Google Cloud project as deployment targets. If you have two projects, you can split the testing and review app from your prodcuction workload.
- Enable the Cloud Build, Cloud Run, Container Registry, and Resource Manager APIs in all Google Cloud projects: [Enapble APIs](https://console.cloud.google.com/flows/enableapi?apiid=cloudbuild.googleapis.com,run.googleapis.com,containerregistry.googleapis.com,cloudresourcemanager.googleapis.com)
- Assig IAM permissions to Clouduild ervice Account in all Google Cloud projects: [Go to the Cloud Build settings page](https://console.cloud.google.com/cloud-build/settings) and enable "Cloud Run Admin". In the *Additional steps may be required* pop-up, click *GRANT ACCESS TO ALL SERVICE ACCOUNTS*.
The result should look like this:
![Cloud Build Service account permissions](./assets/cloud_build_iam.png)
- Create a service account for google Cloud Build to be used by GitLab. Goto [IAM & Admin > Service Accounts](https://console.cloud.google.com/iam-admin/serviceaccounts), select your project and click *+ Create Service Account*. Choose a name and select the role *Cloud Build Service Agent*. Under *Actions* -> *Manage Keys* create a new JSON key by clicking *ADD KEY*. Download the created json file, you will later have to store the content of this file in a GitLab variable.
- Create another service account for Google Container Registry (depreceated, will be replaced by Google Artifact Registry). Goto [IAM & Admin > Service Accounts](https://console.cloud.google.com/iam-admin/serviceaccounts), select your project and click *+ Create Service Account*. Choose a name and select the role *Storage Admin* plus *Container Analysis Admin*. Under *Actions* -> *Manage Keys* create a new JSON key by clicking *ADD KEY*. Download the created json file, you will later have to store the content of this file in a GitLab variable.
- In the GitLab WebUI go to the forked project. Select *Settings* -> *CI/CD* and *Expand* the *Variables* subsection. Create and populate the following variables:
  - GCP_SERVICE_KEY - The content of the json file create before.
  - GCP_SERVICE_KEY__TEST - If you use two Google Cloud projects, insert the content of the json file of the service account created in your project for review apps. Otherwise use the same json file as for GCP_SERVICE_KEY.
  - GCP_REGISTRY_KEY - The content of the json file create for service account of the Google Container Registry goes here.
  - APP_NAME="gcp-paas-app" - A name for the app.
  - BASE_DOMAIN_PROD - Please prepopulate with something like "https://www.gitlab.com". Once the ci/cd pipeline has run sucessfully the first time (including a manual run of deploy-prod job), please check Google Cloud Run's webui for the url of the deployed service. For the production app the url is build of the "https://$APP_NAME-" and a rest. The rest goes here.
  - BASE_DOMAIN_REVIEW - The same as with BASE_DOMAIN_PROD before. But for review the url is build of "https://$APP_NAME--$CI_COMMIT_SHORT_SHA-" plus rest. The rest goes here.
  - GCP_PROJECT_ID - The name of the Google Cloud project choosen for production.
  - GCP_PROJECT_ID__TEST - The name of the Google Cloud project choosen for preview.
  - INFRA - The deployment target. As of today you can choose between "gitlab" and "google". Please choose the later in this case.

    Please always deselect *Protected variable*!
 
- (Optional) For local debugging purpose, install the [Google Cloud CLI](https://cloud.google.com/sdk)
