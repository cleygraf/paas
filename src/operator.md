---
marp: true
theme: gitlab-theme
title: GitLab Operator
footer: ![w:36 h:36](./../assets/gitlab-logo.svg)
---

<div style="display:flex; flex-direction:column;">
    <h1 style="margin-top:1em;text-align:right">
      GitLab Operator - Brussels
    </h1>
    <h2 style="margin-bottom:1.5em;text-align:right;color:#FF9900">
      Technical Partner Community Meetup, 2024-10-19
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
<!-- header: "Agenda" -->

- Warm-up
- Introduction to GitLab
- Why Operators?
- GitLab Operator
- GitLab Runner Operator

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "" -->

<div class="white-center"><p>Warm-up</p></div>

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "Please vote:" -->

<br />
<br />

<h2 class="center"> OpenShift vs. other k8s flavors</h2>

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "Please vote:" -->

## k8s/osp: on-prem vs. cloud/hosted

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "Please vote:" -->

## GitLab vs. GitHub vs. nothing 

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "Please vote:" -->

## GitLab: self-managed vs. SaaS 

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "Please vote:" -->

## GitLab self-managed: OpenShift

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "Slides online" -->

![bg 30%](./../assets/url-operator-prod.png)

<!-- footer: ##URL_OPERATOR_PROD## --->
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

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "GitLab's Software Factory Approach" -->

![bg](./../assets/software-factory.svg)

- Ideas go in, applications come out
- Shift security left: checks at each stage
- Full visibility from planning to production

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: ""  --> 

![bg 60%](./../assets/AI-powered_DevSecOps.png)

---
<!-- header:  "AI powered - in every stage & for everyone" -->

<img src="./../assets/GitLab AI Workflow.svg" class="center">

---
<!-- header: "GitLab's hosting options" -->

- *[SaaS](https://gitlab.com) (provides runners too!)*
- [GitLab Dedicated](https://about.gitlab.com/dedicated/) (in AWS region of choice)
- [Self-managed](https://about.gitlab.com/install/) (on-prem or any cloud, runners need to be provided by you)

[Free tier (SaaS) + Premium and Ultimat Editions](src/talk-track.md)

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "Why Operators?"  --> 

According to [kubernetes.io](https://kubernetes.io/docs/concepts/extend-kubernetes/operator/):

> Operators are software extensions to Kubernetes that make use of **custom resources** to manage applications and their components. Operators follow Kubernetes principles, notably the **control loop**.

<br />

(Highlights by me)

---
<!-- header: "Why Operators?"  --> 

![bg 60%](./../assets/k8s-operator.png)

<!-- footer: Image from (CNCF)[https://www.cncf.io/blog/2022/06/15/kubernetes-operators-what-are-they-some-examples/]  --->
---
<!-- header: "Why Operators?"  --> 

- Cloud native way of installing an app into k8s
- Taking care of the complete app lifecycle
- Perfect fit for OpenShift: managed through webui or cli

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "Demo time"  --> 

## Install GitLab Operator

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "Demo time"  --> 

## Install GitLab with the Operator

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "How to install GitLab on k8s"  --> 

- With GitLab's helm chart
- With the GitLab operator
  - Sadly: not recommended for production yet ([docs](https://docs.gitlab.com/operator/installation.html))
  - Expected for selected use cases soon ([epic](https://gitlab.com/groups/gitlab-org/-/epics/10968))
  - Aiming for near zero-downtime upgrade

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "Prerequisites"  --> 

- cert-manager
- Ingress
  - OpenShift routes
  - NGINX ingress
  
<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "Updates"  --> 

- Update the operator ([docs](https://docs.gitlab.com/operator/operator_upgrades.html))
- Update GitLab ([docs](https://docs.gitlab.com/operator/gitlab_upgrades.html))
  
<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
