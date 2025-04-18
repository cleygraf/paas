---
marp: true
theme: gitlab-theme
title: ##PAAS_TITLE## - ##SUBTITLE##
footer: 
---

<div style="display:flex; flex-direction:column;">
    <h1 style="margin-top:1em;text-align:right;color:#fc6d27">
      ##PAAS_TITLE##
    </h1>
    <h2 style="margin-bottom:1.5em;text-align:right">
      ##SUBTITLE##
    </h2>
    <div style="display:flex; flex-direction:row;">
        <div style="display:flex; flex-direction:row">
            <div>
                <img class="avatar" src="./assets/avatar-chris.jpeg">
            </div>
            <div style="display:flex; flex-direction:column; justify-content:center; margin-left:1em">
                <h2>
                    Christoph Leygraf
                </h2>
                <a href= "mailto:cleygraf@gitlab.com">cleygraf@gitlab.com</a>
            </div>
        </div>
        <div style="display:flex; flex-direction:row; margin-left:2em">
        </div>
    </div>
</div>

---
<!-- header: ""  --> 

![bg 60%](./assets/AI-powered_DevSecOps.png)

---

<div class="white-center"><p>Cars?</p></div>

---

![bg 90%](./assets/motorwagen_1886.jpg)
![bg 90%](./assets/c-class.jpg)

---

![bg 60%](./assets/mb_manufactoring_line.jpg)

---
<!-- header: "" -->

<div class="white-center"><p>And Software?</p></div>

<!-- footer: "" -->
---
<!-- header: "GitLab's Software Factory Approach" -->
<style scoped>
section {
  display: flex;
  flex-direction: column;
  justify-content: start;
  text-align: left;
}
</style>

![bg](./assets/software-factory.svg)

- Ideas go in, applications come out
- Shift security left: checks at each stage
- Full visibility from planning to production

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header: ""  --> 

![bg 60%](./assets/AI-powered_DevSecOps.png)

<!-- footer: "" -->
---
<!-- header: "One Platform Benefits"  --> 

- One UI to use
- One Data Store for everything
- One tool to maintain and operate
- Transparency across the complete 
- Security Guiderails built-in

<!-- footer: "" -->
---
<!-- header: ""  --> 

![bg 60%](./assets/AI-powered_DevSecOps.png)

<!-- footer: "" -->
---
<!-- header: "" -->

<div class="white-center"><p>Code Suggestions</p></div>

<!-- footer: "" -->
---
<!-- header:  "AI powered - in every step & for every user" -->

![bg w:90% vertical](./assets/gitlab-ai-workflow.png)

---
<!-- header: "GitLab's hosting options" -->

- _[SaaS](https://gitlab.com) (provides runners too!)_
- [GitLab Dedicated](https://about.gitlab.com/dedicated/) (in AWS region of choice)
- [Self-managed](https://about.gitlab.com/install/) (on-prem or any cloud, runners need to be provided by you)

<br />

[Free tier (SaaS) + Premium and Ultimate Editions](src/talk-track.md)

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header: "" -->

<div class="white-center"><p>What is a PaaS?</p></div>

<!-- footer: "" -->
---
<!-- header:  "What is a PaaS?" -->

According to [Wikipedia](https://en.wikipedia.org/wiki/Platform_as_a_service):

> Platform as a service (...) is a category of cloud computing services that allows customers to provision, instantiate, run, and manage a modular bundle comprising a computing platform and one or more applications, without the complexity of building and maintaining the infrastructure typically associated with developing and launching the application(s), and to allow developers to create, develop, and package such software bundles.

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---

According to [Wikipedia](https://en.wikipedia.org/wiki/Platform_as_a_service):

> Platform as a service (...) is a category of cloud computing services that allows customers to provision, instantiate, run, and manage a modular bundle comprising a computing platform and one or more applications, without the complexity of building and maintaining the infrastructure typically associated with developing and launching the application(s), and to allow developers to create, develop, and package such software bundles.

<div class="red-stamp"><p>WRONG!!!</p></div>

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "For today it's ..." -->
<style scoped>
ul{
  list-style-type: none;
  margin-left: 20px;
  line-height: 2em;
}
li {
  font-size: 1.7em;
  font-style: normal;
  font-weight: bold;
}
</style>
- **P**resentation
- **a**s
- **a**
- **S**ervice

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "Production PaaS App" -->

![bg 30%](./assets/url-prod.png)

<!-- footer: ##URL_PROD## ![w:36 h:36](./assets/gitlab-logo.svg) --->
---
<!-- header:  "Goal: Fix my mistake" -->

<img src="./assets/gitlab-workflow.png" style="width:100%; margin-top:1em">

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "Concept" -->

- This is a demo and **not meant for production**!
- It is build to be **educational**, not show how smart (rather how dumb) I am ;-)
- I like to show **how easy GitLab interacts with the native tooling of various cloud providers** (GitLab alone, Google Cloud, AWS).
- I am aiming for teaching ideas and **concepts, not the details**. 
- As a side kick this is just a playground for me to show off cool stuff.
- **No knowledge of GitLab or of a programming language** is required. Only basic understanding of software development concepts and cloud technologies is necessary.

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "Design decisions" -->

- Keep it as simple as possible (**KISS** principle).
- Make it **only as secure as needed for a demo**.
- **Share it with the public**, but BYOI.
- Uses **simple text files with markdown** instead of a programming language like rust, go, ... .

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) --->
---
<!-- header:  "Demo Project" -->

![bg 30%](./assets/url-proj.png)

<!-- footer: ##URL_PROJ## ![w:36 h:36](./assets/gitlab-logo.svg) --->
---
<!-- header:  "Architecture - AWS" -->

- GitLab SaaS (with runners)
- AWS EKS with GitLab runners using IRSA (**I**AM **R**oles for **S**ervice **A**ccounts)
- AWS ECR (**E**lastic **C**ontainer **R**egistry)
- AWS Fargate (Serverless Compute Engine)

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "Architecture - Google Cloud" -->

- GitLab SaaS (with runners and GitLab SAST)
- Google Cloud Build
- Google Container Registry 
- Google Cloud Run

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "Architecture - GitLab" -->

- GitLab SaaS (with runners)
- GitLab Pages

<br />

Works with a trial license!

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "Prerequisits - AWS" -->

- GitLab SaaS (with runners)
- An AWS EKS cluster (OIDC enabled)
- Roles, policies, service accounts and namespaces for the EKS cluster to use by IRSA
- GitLab runners on EKS (GitLab provided helm chart with a custom `values.yaml` file in this repository)
- ECS Fargate with two services, load balancers and task definitions 

<br />
<br />

Explanations on how to set up the AWS infrastructure are in `./infra/aws/README.MD`

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "AWS: IRSA" -->

[IAM roles for service accounts](https://docs.aws.amazon.com/eks/latest/userguide/iam-roles-for-service-accounts.html)

<br />

> Applications in a Pod's containers can use an AWS SDK or the AWS CLI to make API requests to AWS services using AWS Identity and Access Management (IAM) permissions. ... Instead of creating and distributing your AWS credentials to the containers or using the Amazon EC2 instance's role, you associate an IAM role with a Kubernetes service account and configure your Pods to use the service account. ...

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "AWS: Infrastructure Architecture" -->

<img src="./assets/AWS Infra Architecture.svg"  class="center">

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "GitLab Workflow: Introduction" -->

<img src="./assets/gitlab-workflow.png" style="width:100%; margin-top:1em">

---
<!-- header:  "GitLab CI/CD" -->

CI/CD is a continuous method of software development, where you _continuously build, test, deploy, and monitor iterative code changes_.

- Runners, Executors
- Pipelines 
  - Stages
  - Jobs
  - '.gitlab-ci.yml'
  - Variables

[Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/)

<!--
References: 
- [GitLab Runner](https://docs.gitlab.com/runner/)
- [Executors](https://docs.gitlab.com/runner/executors/)
-->
<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "GitLab Groups and Projects" -->

- Groups
  - Variables
  - Runners
  - Epics
  - Projects
    - Variables
    - Runners
    - Issues
    - Repository

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "GitLab Workflow: Issue, MR, Push Code, Pipeline" -->

<img src="./assets/gitlab-workflow.png" style="width:100%; margin-top:1em">

<!-- footer: Hint: Use 'Fix typo on first slide: replace 2024 with 2023 and use markdown' to generate description. ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "GitLab Pipeline - Stages and jobs" -->

- prechecks
  - markdownlint
- build
  - create-qr
  - generate-deck
  - build-container (tags: aws)
- test
  - kics-iac-sast
- review
  - review (tags: aws)
- deploy
  - deploy-prod

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "GitLab Workflow: Preview App" -->

<img src="./assets/gitlab-workflow.png" style="width:100%; margin-top:1em">

---
<!-- header:  "Review PaaS App" -->

![bg 30%](./assets/url-review.png)

<!-- footer: ##URL_REVIEW## ![w:36 h:36](./assets/gitlab-logo.svg) --->
---
<!-- header:  "Production PaaS App" -->

![bg 30%](./assets/url-prod.png) 

<!-- footer: ##URL_PROD## ![w:36 h:36](./assets/gitlab-logo.svg) --->
---
<!-- header:  "Improvements to consider" -->

- Alternative: Use Fargate with associated IAM roles instead of EKS
- Add SAST container scanning or ECR Image scanning
- More granular permissions

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "" -->

# Thank you

Friendly reminder: From now on, **PaaS** is **P**resentation **a**s **a** **S**ervice.

![bg right w:100%](./assets/thankyou.png)
<!-- footer: "" -->
---
<!-- header:  "Useful links?" -->

![w:20 h:20](./assets/gitlab-logo.svg) [GitLab 2023 Global DevSecOps Report Series](https://about.gitlab.com/developer-survey/)

![w:20 h:20](./assets/gitlab-logo.svg) [GitLab Duo](https://about.gitlab.com/gitlab-duo/)

![w:20 h:20](./assets/gitlab-logo.svg) [AI/ML in DevSecOps Series](https://about.gitlab.com/blog/2023/04/24/ai-ml-in-devsecops-series/)

![w:20 h:20](./assets/gitlab-logo.svg) [GitLab and Google Cloud AI Partnership](https://about.gitlab.com/press/releases/2023-05-02-gitLab-and-google-cloud-partner-to-expand-ai-assisted-capabilities.html)

![w:20 h:20](./assets/gitlab-logo.svg) [GitLab on Google Cloud](https://about.gitlab.com/partners/technology-partners/google-cloud-platform/)

![w:20 h:20](./assets/gitlab-logo.svg) [... even more GitLab related links](./links.html)

<!-- footer: ![w:36 h:36](./assets/gitlab-logo.svg) -->
---
<!-- header:  "<b>Updated</b> Production PaaS App" -->

![bg 30%](./assets/url-prod.png)

<!-- footer: Still the same URL: ##URL_PROD## ![w:36 h:36](./assets/gitlab-logo.svg) --->
