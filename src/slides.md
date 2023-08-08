---
marp: true
theme: gitlab-theme
title: git & GitLab - Computacenter DE
footer: ![w:36 h:36](./../assets/gitlab-logo.svg)
---

<div style="display:flex; flex-direction:column;">
    <h1 style="margin-top:1em;text-align:right">
        git & GitLab
    </h1>
    <h2 style="margin-bottom:1.5em;text-align:right">
        <b>GE CompuNet</b>
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

- Introduction, today's goals
- Preface: What's GitLab?
- SCM: git (cli & VS Code)
- GitLab Developer Workflow

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

<div class="white-center"><p>What is DevOps?</p></div>

---
<!-- header: "What is DevOps?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) DevOps is a set of practices, principles, and cultural philosophies aimed at improving collaboration and communication between software development (Dev) and IT operations (Ops) teams. The goal of DevOps is to streamline and automate the software development and deployment process, resulting in faster, more reliable, and more efficient software delivery.
 
 ...
</div>

---
<!-- header: "What is DevOps?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) DevOps seeks to break down the traditional silos that often exist between development and operations teams. By fostering collaboration and shared responsibility, DevOps aims to eliminate bottlenecks, reduce errors, and improve the overall quality of software products. This is achieved through a combination of automation, continuous integration, continuous delivery (CI/CD), and a culture of constant improvement.
 
 ...
</div>

---
<!-- header: "What is DevOps?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) Key principles of DevOps include:

**Collaboration**: Encouraging developers, operations personnel, and other stakeholders to work together closely throughout the entire software development lifecycle.

**Automation**: Automating repetitive tasks such as building, testing, deployment, and infrastructure provisioning to reduce manual errors and accelerate delivery.

 ...
</div>

---
<!-- header: "What is DevOps?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) **Continuous Integration (CI)**: Frequently integrating code changes into a shared repository, allowing for early detection of integration issues and promoting a more consistent development process.

**Continuous Delivery (CD)**: Automatically deploying code changes to production or staging environments after passing automated tests, enabling faster and more reliable releases.

**Infrastructure as Code (IaC)**: Managing and provisioning infrastructure using code and automation tools, making it easier to maintain and replicate environments.
 
 ...
</div>

---
<!-- header: "What is DevOps?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) **Monitoring and Feedback**: Collecting and analyzing data from applications and infrastructure to gain insights into performance, user behavior, and issues, which helps in making informed decisions for improvements.

**Microservices**: Architecting applications as smaller, independent services that can be developed, deployed, and scaled independently, enhancing flexibility and maintainability.

**Security as Code**: Integrating security practices into the development process, ensuring that security is a continuous concern and not an afterthought.

 ...
</div>

---
<!-- header: "What is DevOps?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) **Culture of Learning**: Promoting a culture that encourages learning from failures, embracing experimentation, and striving for continuous improvement.

**Lean Practices**: Reducing waste in the development process by optimizing workflows and focusing on delivering value to users.

 ...
</div>

---
<!-- header: "What is DevOps?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) DevOps can lead to benefits such as faster time-to-market, increased deployment frequency, improved reliability, reduced lead time for bug fixes, and better collaboration between teams. However, adopting DevOps requires changes in both technical practices and organizational culture, which can be a gradual process that varies depending on the organization's existing workflows and technology stack.

</div>

---
<!-- header: "" -->

<div class="white-center"><p>What is Source Code Management (SCM)?</p></div>

---
<!-- header: "What is Source Code Management (SCM)?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) Source code management (SCM), also known as version control or revision control, is a set of practices and tools used in software development to track and manage changes to source code and other related files. The primary goal of source code management is to enable collaboration among developers working on the same codebase while ensuring the integrity and traceability of the codebase's history.
 
 ...
</div>

---

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) Key aspects of source code management include:

**Version Tracking**: SCM systems track changes made to source code files over time. Each change is recorded as a separate version, allowing developers to view and compare different versions of files.

**Collaboration**: SCM enables multiple developers to work on the same project simultaneously. Developers can create branches (parallel copies) of the codebase to work on specific features or fixes without interfering with each other's work.

...
</div>

---

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) **Change History**: SCM maintains a chronological history of changes made to the codebase. This history includes information about who made the change, what changes were made, and when they were made. This information can be invaluable for debugging, auditing, and understanding the evolution of the codebase.

**Merge and Conflict Resolution**: When developers work on different branches and want to combine their changes, an SCM system helps merge those changes intelligently. In cases where conflicting changes occur (e.g., when two developers modify the same lines of code), the system provides tools to resolve those conflicts.

...
</div>

---

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) **Reverting Changes**: If a change causes problems or introduces bugs, SCM allows developers to revert back to a previous version of the code, effectively undoing problematic changes.

**Code Review**: SCM systems often integrate with code review tools, making it easier for team members to review and discuss proposed changes before they are merged into the main codebase.

...
</div>

---

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) **Backup and Disaster Recovery**: By storing code and its history in a centralized repository or distributed system, SCM provides a form of backup and allows for disaster recovery. If a codebase is lost or corrupted, developers can retrieve previous versions from the SCM system.

**Branching Strategies**: SCM systems support various branching strategies, such as feature branching, release branching, and hotfix branching. These strategies help manage the flow of changes and stabilize code for different stages of development.

...
</div>

---

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) Popular SCM systems include **Git**, Mercurial, and Subversion. Git, in particular, has gained widespread adoption due to its distributed nature, speed, and powerful branching capabilities. GitHub, GitLab, and Bitbucket are platforms built around Git that provide additional features for hosting and collaborating on repositories.

...
</div>

---
<!-- header: "" -->

<div class="white-center"><p>What is git?</p></div>

---
<!-- header:  "What is git?" -->

<div class="ai">

![w:23 h:23](./../assets/ChatGPT_logo.png) Git is a distributed version control system (DVCS) that was created by Linus Torvalds in 2005. It is widely used for tracking changes in source code during software development and for coordinating work among multiple developers. Git is designed to be fast, efficient, and capable of handling both small and large projects with ease. 

...
</div>

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
<!-- header:  "Goal: GitLab developer work flow" -->

<img src="./../assets/gitlab-workflow.png" style="width:100%; margin-top:1em">

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->

---
<!-- header:  "Excercise: <i>git cli</i>" -->

1. First steps with git on the command line (guided, togehther)
2. [Self paced](https://www.freecodecamp.org/news/how-to-use-git-best-practices-for-beginners/#how-to-set-up-a-new-git-repository)
   
**Remark**: Please use GitLab instead of GitHub ;-) 

---
<!-- header:  "Excercise: <i>git VS Code</i>" -->

1. Utilize VS Code to interfere with GitLab (guided, togehther)
2. [Self paced](https://www.freecodecamp.org/news/how-to-use-git-best-practices-for-beginners/#how-to-set-up-a-new-git-repository)
   
**Remark**: Please use GitLab instead of GitHub ;-) 

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

![w:20 h:20](./../assets/gitlab-logo.svg) [AI/ML in DevSecOps Series](https://about.gitlab.com/blog/2023/04/24/ai-ml-in-devsecops-series/)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab and Google Cloud AI Partnership](https://about.gitlab.com/press/releases/2023-05-02-gitLab-and-google-cloud-partner-to-expand-ai-assisted-capabilities.html)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab on Google Cloud](https://about.gitlab.com/partners/technology-partners/google-cloud-platform/)

![w:20 h:16](./../assets/googlecloud.png) [GitLab Case Study](https://cloud.google.com/customers/gitlab)

![w:20 h:20](./../assets/gitlab-logo.svg) [... even more GitLab related links](./links.html)

<!-- footer: "![w:15 h:15](./../assets/gitlab-logo.svg) [These slides as PDF](slides.pdf)" -->

---
<!-- header:  "<b>Updated</b> Production PaaS App" -->

![bg 30%](./../assets/url-prod.png)

<!-- footer: Still the same URL: ##URL_PROD## --->
