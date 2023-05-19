---
marp: true
theme: gitlab-theme
footer: ![w:36 h:36](./../assets/gitlab-logo.svg)
---

<div style="display:flex; flex-direction:column;">
    <h1 style="margin-bottom:0.5em; margin-top:1em">
        GitLab on GCP
    </h1>
    <div style="display:flex; flex-direction:row;">
        <div style="display:flex; flex-direction:row">
            <div>
                <img class="avatar" src="./../assets/avatar-chris.jpeg">
            </div>
            <div style="display:flex; flex-direction:column; justify-content:center; margin-left: 1em">
                <h2>
                    Christoph Leygraf
                </h2>
                <h6>
                    Channel Solutions Architect
                </h6>
            </div>
        </div>
        <div style="display:flex; flex-direction:row; margin-left: 2em">
            <div>
                <img class="avatar" src="./../assets/avatar-peter.jpeg">
            </div>
            <div style="display:flex; flex-direction:column; justify-content:center; margin-left: 1em">
                <h2>
                    Péter Bozsó
                </h2>
                <h6>
                    Channel Solutions Architect
                </h6>
            </div>
        </div>
    </div>
</div>

---

## What is a PaaS?

According to [Wikipedia](https://en.wikipedia.org/wiki/Platform_as_a_service):

> Platform as a service (...) is a category of cloud computing services that allows customers to provision, instantiate, run, and manage a modular bundle comprising a computing platform and one or more applications, without the complexity of building and maintaining the infrastructure typically associated with developing and launching the application(s), and to allow developers to create, develop, and package such software bundles.

According to us:

```ts
import { PaaS } from 'gitlab-gcp-presentation-sdk';

console.log(PaaS); // Output: 'Presentation as a Service'
```

---

## Software Factory Approach

![bg](./../assets/software-factory.svg)

- Ideas go in, applications come out
- Shift security left: checks at each stage
- Full visibility from planning to production

---

## GitLab &#x1F9E1; GCP

<img src="./../assets/gcp-mapping.svg" style="width:100%; margin-top:1em">

---

Reminder: PaaS is Presentation as a Service from now on!
