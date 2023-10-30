---
marp: true
theme: gitlab-theme
title: GitLab Duo AI
footer: ![w:36 h:36](./../assets/gitlab-logo.svg)
---

<div style="display:flex; flex-direction:column;">
    <h1 style="margin-top:1em;text-align:right">
      GitLab Duo AI Introduction & Demo, 2023-10-30
    </h1>
    <h2 style="margin-bottom:1.5em;text-align:right;color:#FF9900">
      Teammeeting DD-West, Hugo-Junkers-Halle, MG,
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

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
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

![bg](./../assets/software-factory.svg)

- Ideas go in, applications come out
- Shift security left: checks at each stage
- Full visibility from planning to production

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: ""  --> 

![bg 60%](./../assets/AI-powered_DevSecOps.png)

---
<!-- header: "" -->

<div class="white-center"><p>Code Suggestions</p></div>

<!--
Reference:
- [Supported coding languages](https://cloud.google.com/vertex-ai/docs/generative-ai/code/code-models-overview#supported_coding_languages) 
- For code completion the `code-gecko` code model is required.
-->
<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "" -->

<div class="white-center"><p>39%</p></div>

<!--
39% of time spending working with code / 52 minutes of code time per day

Sources (as of May 3rd 2023):
- https://tidelift.com/subscription/managed-open-source-survey?utm_source=thenewstack&utm_medium=website&utm_content=inline-mention&utm_campaign=platform
- https://www.software.com/reports/code-time-report#developers-code-less-than-one-hour-per-day-
-->
<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header: "" -->

<div class="white-center"><p>52 minutes</p></div>

<!--
39% of time spending working with code / 52 minutes of code time per day

Sources (as of May 3rd 2023):
- https://tidelift.com/subscription/managed-open-source-survey?utm_source=thenewstack&utm_medium=website&utm_content=inline-mention&utm_campaign=platform
- https://www.software.com/reports/code-time-report#developers-code-less-than-one-hour-per-day-
-->
<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "GitLab's AI Vision" -->
<style scoped>
section {
  line-height: 1.5em;
}
</style>

![w:20 h:20](./../assets/gitlab-logo.svg) Throughout the Software Delivery Lifecycle
![w:20 h:20](./../assets/gitlab-logo.svg) Privacy and transparency first  
![w:20 h:20](./../assets/gitlab-logo.svg) Single Application

![bg right:50%](./../assets/ai/vision.png)

---
<!-- header:  "AI powered - in every step & for every user" -->

![bg w:90% vertical](./../assets/gitlab-ai-workflow.png)

<!-- footer: "" -->
---
<!-- header:  "Dogfooding" -->

![bg w:50% vertical](./../assets/dogfood.png)

<!-- footer: "" -->
---
<!-- header:  "DYOC" -->

![bg w:60% vertical](./../assets/champagne.jpg)

<!-- footer: "" -->
---
<!-- header:  "PaaS" -->

<div class="content-container">
    <div class="content">
        <h2><span style="color:#fc6d26;font-size:130%"><b>P</b></span>resentation</h2>
        <h2><span style="color:#fc6d26;font-size:130%"><b>a</b></span>s</h2>
        <h2><span style="color:#fc6d26;font-size:130%"><b>a</b></span></h2>
        <h2><span style="color:#fc6d26;font-size:130%"><b>S</b></span>ervice</h2>
    </div>
</div>

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
---
<!-- header:  "Live demo - Slides" -->

![bg w:40% vertical](./../assets/url-ai-prod.png)

<!-- footer: "##URL_AI_PROD##" -->
---
<!-- header:  "Live demo - GitLab Project" -->

![bg w:40% vertical](./../assets/url-proj.png)

<!-- footer: "##URL_PROJ##" -->
---
<!-- header:  "Flow of demo" -->

![bg w:90% vertical](./../assets/gitlab-ai-workflow-to-demo.png)

<!-- footer: "" -->
---
<!-- header:  "Generate issue description" -->

<div class="white-center"><p>Demo</p></div>

<!-- footer: "Hint: Use 'Fix typo on first slide: replace 2024 with 2023 and use markdown' to generate description." -->
---
<!-- header:  "Code Suggestions" -->

<div class="white-center"><p>Demo</p></div>

<!-- footer: "Hint: Use '# Iterate over the directory ./src and print filenames in another file' to generate code." -->
---
<!-- header:  "Explain this code" -->

<div class="white-center"><p>Demo</p></div>

<!-- footer: "Hint: View '.gitlab-ci.yml' file, select code and click '?'" -->
---
<!-- header:  "Explain this vulnerability" -->

<div class="white-center"><p>Demo</p></div>

<!-- footer: "Hint: Go to 'Secure' -> 'Vulnerability report', select a vulnerability and click 'Explain vulnerability'." -->
---
<!-- header:  "Summarize MR review" -->

<div class="white-center"><p>Demo</p></div>

<!-- footer: "Hint: Open a MR, go to 'Commits' and select 'View summary notes' form three dots." -->
---
<!-- header:  "" -->

![bg right w:700](./../assets/gitlab-logo-with-name.svg)

## Thank you!

<!-- footer: "https://about.gitlab.com/" -->
---
<!-- header:  "Useful links?" -->

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab 2023 Global DevSecOps Report Series](https://about.gitlab.com/developer-survey/)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab Duo](https://about.gitlab.com/gitlab-duo/)

![w:20 h:20](./../assets/gitlab-logo.svg) [AI/ML in DevSecOps Series](https://about.gitlab.com/blog/2023/04/24/ai-ml-in-devsecops-series/)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab and Google Cloud AI Partnership](https://about.gitlab.com/press/releases/2023-05-02-gitLab-and-google-cloud-partner-to-expand-ai-assisted-capabilities.html)

![w:20 h:20](./../assets/gitlab-logo.svg) [GitLab on Google Cloud](https://about.gitlab.com/partners/technology-partners/google-cloud-platform/)

![w:20 h:20](./../assets/gitlab-logo.svg) [... even more GitLab related links](./links.html)

<!-- footer: ![w:36 h:36](./../assets/gitlab-logo.svg) -->
