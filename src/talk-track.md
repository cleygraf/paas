Let us introduce ourself first: Peter and I are both Channel Solutions Architects here at GitLab in EMEA. Our responsibility is training our partners on technical topics and help them to overcome their customer's challenges.

--------------------------------------------------------------------------

Why GitLab and Google Cloud?
-> We share a bunch of commonalities: Both names start with a capital G and both share other letters of the _Alphabet_ too!
-> We both consider ourselves to offer a **platform** and I truly believe that these two platforms are **complementary**.

--------------------------------------------------------------------------

- Before we get into the reasoning behind this believe, let us introduce *GitLab* - the *DevSecOps Platform* - to you first.

- Here the short pitch: GitLab is a software factory with a long manufacturing line. And I use the word software in a very broad sense: everything that includes some kind of textual code to let computers dance for us: from program code in languages like C or Ruby to infrastructure described by code or metadata and parametrization used to develop AI models. 

- GitLab allows you to start with an idea, collaborate to improve the idea, plan your work together and start creating with your team. The creation gets's tested in an automated fashion, a review environment is deployed for verification, and you iterate on your creation until you get approval and deploy to production to show the world what you have created.

- Key benefits for your development workflow are
    - More speed
    - Increased efficiency
    - Better and safer software

- Sounds too easy, correct? But we are not the only ones who claim to be a platform, and everybody promises you that it is easy. 

--------------------------------------------------------------------------

- We know! Seeing is believing, so let me show how easy PaaS is. We all know PaaS: Platform as a Service! 

--------------------------------------------------------------------------

Wrong! 

--------------------------------------------------------------------------

During this session, PaaS stands for Presentation as a Service!!

- Our idea is to build this slides from markdown files with the help of GitLab and Google Cloud. We will finally publish the slides to production using Cloud Run and you can access them right now.

--------------------------------------------------------------------------

- We spotted a dumb typo before, and today's mission is to fix this slide deck. 

- We will walk you through the development workflow, and we are using GitLab.com, the SaaS offering of GitLab. GitLab can also be deployed on premise, but that is not a right fit here.

- You probably already recognized that I'm not a "real" developer. I'm only an operations guy who just got enlighted by Infrastructure as Code and GitOps. But my friend Peter is the developer in this crazy relationship. Consequently, he will guide you through the development workflow with GitLab and I will show you how it looks in GitLab.

-----------------------------------------------------------------------------------------------

- Highlight how GitLab and GCP will work together:
    - GitLab hosts the source code.
    - Planning and collaboration happens on GitLab.
    - All automation is triggered from GitLab
    - Building, testing and production are happening on Google Cloud
        - Cloud Build
        - Container/Artifact Registry
        - Cloud Run
    - GitLab provides a single pane of glass of development process

--------------------------------------------------------------------------

- After ingenuity hit us, and we have had the idea of PaaS, we created an epic. An epic is the place to brainstorm your ideas and do portfolio management. You can use sub-epics, milestones and iterations to  do a more fine granular planning. But we want to keep simple today, right?

- Once we agreed on an initial set of features, we start working on the code and issues are exactly for that. We have two work streams:

    - Develop the talk track of this session and create the slides
    - Build all the magic that creates HTML out of markdown and publishes the results.

- Consequently, we created two issues: one for each work stream. Peter took responsibility for the slide/talk part and Chris hacked the automation part together. This enables us to work independently but also be able to collaborate and help each other.

- Out of each issue we created a merge request as the final goal is to merge what each of us has created independently. In the merge request, the results of all the automations are visible.

- Once you commit code and push the commit to GitLab.com CI/CD kicks in. CI/CD stands for Continuous Integration and Continuous Deployment.
