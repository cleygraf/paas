---
marp: true
theme: gitlab-theme
title: GitLab AWS Workshop
footer: ![w:36 h:36](./../assets/gitlab-logo.svg)
---

<div style="display:flex; flex-direction:column;">
    <h1 style="margin-top:1em;text-align:right">
        GitLab Workshop Stockholm, 2023-09-28
    </h1>
    <h2 style="margin-bottom:1.5em;text-align:right;color:#FF9900">
        <b>AWS</b>
    </h2>
    <div style="display:flex; flex-direction:row;">
        <div style="display:flex; flex-direction:row">
            <div>
                <img class="avatar" src="./../assets/avatar-chris.jpeg">
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

![bg 60%](./../assets/AI-powered_DevSecOps.png)

---

<div class="white-center"><p>Cars?</p></div>

---

![bg 90%](./../assets/motorwagen_1886.jpg)
![bg 90%](./../assets/c-class.jpg)

---

![bg 60%](./../assets/mb_manufactoring_line.jpg)

---
<!-- header: "" -->

<div class="white-center"><p>And Software?</p></div>

---

<!-- header: "GitLab's Software Factory Approach" -->

![bg](./../assets/software-factory.svg)

- Ideas go in, applications come out
- Shift security left: checks at each stage
- Full visibility from planning to production

---
<!-- header: "" -->

<div class="white-center"><p>What is a PaaS?</p></div>

---
<!-- header:  "What is a PaaS?" -->

According to [Wikipedia](https://en.wikipedia.org/wiki/Platform_as_a_service):

> Platform as a service (...) is a category of cloud computing services that allows customers to provision, instantiate, run, and manage a modular bundle comprising a computing platform and one or more applications, without the complexity of building and maintaining the infrastructure typically associated with developing and launching the application(s), and to allow developers to create, develop, and package such software bundles.

---

According to [Wikipedia](https://en.wikipedia.org/wiki/Platform_as_a_service):

> Platform as a service (...) is a category of cloud computing services that allows customers to provision, instantiate, run, and manage a modular bundle comprising a computing platform and one or more applications, without the complexity of building and maintaining the infrastructure typically associated with developing and launching the application(s), and to allow developers to create, develop, and package such software bundles.

<div class="red-stamp"><p>WRONG!!!</p></div>

---
<!-- header:  "For today it's ..." -->

<div class="content-container">
    <div class="content">
        <h2><span style="color:#fc6d26;font-size:130%"><b>P</b></span>resentation</h2>
        <h2><span style="color:#fc6d26;font-size:130%"><b>a</b></span>s</h2>
        <h2><span style="color:#fc6d26;font-size:130%"><b>a</b></span></h2>
        <h2><span style="color:#fc6d26;font-size:130%"><b>S</b></span>ervice</h2>
    </div>
</div>

---

<!-- header:  "Production PaaS App" -->

![bg 30%](./../assets/url-prod.png)

<!-- footer: ##URL_PROD## --->

---
<!-- header:  "Concept" -->

- This is a demo and not meant for production!
- It is build to be educational, not show how smart (rather how dumb) I am ;-)
- I like to show how easy GitLab interacts with the native tooling of various cloud providers (GitLab alone, Google Cloud, AWS, Auzure to come).
- I am aiming for teaching ideas and concepts, not the details. 
- As a side kick this is a playground for me to show off cool stuff.
- No knowledge of GitLab or of a programming language is required. Only basic understanding of software development concepts and cloud technologies is necessary.

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "Concept - Consequences" -->

- Keep it as simple as possible (KISS principle).
- Make it only as secure as needed for a demo.
- Share it with the public, but BYOI.
- Use simple text files with markdown instead of a programming language like rust, go, ... .

---
<!-- header:  "Architecture - AWS" -->

- GitLab SaaS (including runners)
- AWS EKS with GitLab runners using IRSA (IAM Roles for Service Accounts)
- AWS ECR (Elastic Container Registry)
- AWS Fargate (Container )

---
<!-- header:  "Architecture - Google Cloud" -->

- GitLab SaaS (including runners and GitLab SAST)
- Google Cloud Build
- Google Container Registry 
- Google Cloud Run

---
<!-- header:  "Architecture - GitLab" -->

- GitLab SaaS (including runners)
- GitLab Pages

Works with a trial license!

---
<!-- header:  "Architecture" -->

# Prerequisits

- GitLab SaaS (including runners)
- An AWS EKS cluster (OIDC enabled)
- Create roles, policies and configure the EKS cluster to use IRSA (including a service account and namespace)
- Install GitLab runners with the help of the GitLab provided helm chart
- Provide a `values.yaml` file to make the runners use the service account and namespace mentioned before
- ECS fargate configured with two services, load balancers ...

---
<!-- header:  "Goal: GitLab developer work flow" -->

<img src="./../assets/gitlab-workflow.png" style="width:100%; margin-top:1em">

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->

---
<!-- header:  "CI/CD Pipeline" -->

# Stages and jobs

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

---
<!-- header:  "Architecture" -->

# Improvements to consider

- Get IRSA working again ;-) 
- Alternativly use Fargate with associated IAM roles
- Add SAST container scanning or ECR Image scanning
- More granular permissions

---
<!-- header:  "" -->

![bg right w:700](./../assets/gitlab-logo-with-name.svg)

<div style="height:100%; display:flex; flex-direction:column; justify-content:center;">
    <h2>
        Thank you!
    </h2>
    <br>
    <h4>
        Friendly reminder: from now on, <span style="color:#fc6d26;font-size:100%"><b>PaaS</b></span> is <i><span style="color:#fc6d26;font-size:100%"><b>P</b></span>resentation <span style="color:#fc6d26;font-size:100%"><b>a</b></span>s <span style="color:#fc6d26;font-size:100%"><b>a</b></span> <span style="color:#fc6d26;font-size:100%"><b>S</b></span>ervice.</i>
    </h4>
</div>

<!-- footer: "https://about.gitlab.com/" -->
---
<!-- header:  "Useful links?" -->

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab 2023 Global DevSecOps Report Series](https://about.gitlab.com/developer-survey/)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab Duo](https://about.gitlab.com/gitlab-duo/)

![w:20 h:20](./../assets/gitlab-logo.svg) [AI/ML in DevSecOps Series](https://about.gitlab.com/blog/2023/04/24/ai-ml-in-devsecops-series/)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab Duo](https://about.gitlab.com/gitlab-duo/)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab and Google Cloud AI Partnership](https://about.gitlab.com/press/releases/2023-05-02-gitLab-and-google-cloud-partner-to-expand-ai-assisted-capabilities.html)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab on Google Cloud](https://about.gitlab.com/partners/technology-partners/google-cloud-platform/)

![w:20 h:16](./../assets/googlecloud.png) [GitLab Case Study](https://cloud.google.com/customers/gitlab)

![w:20 h:20](./../assets/gitlab-logo.svg) [... even more GitLab related links](./links.html)

<!-- footer: "![w:15 h:15](./../assets/gitlab-logo.svg) [These slides as PDF](slides.pdf)" -->

---
<!-- header:  "<b>Updated</b> Production PaaS App" -->

![bg 30%](./../assets/url-prod.png)

<!-- footer: Still the same URL: ##URL_PROD## --->
