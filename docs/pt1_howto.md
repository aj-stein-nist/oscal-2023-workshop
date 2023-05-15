---
marp: true
title: "Part 1: How do I OSCAL?"
author: A.J. Stein, Nikita Wootten
theme: csd-workshop2023
class: invert workshop
footer: How do I OSCAL? - 4th Annual OSCAL Conference Workshop
paginate: true
---

<!-- _paginate: false -->

# How do I OSCAL?
### 4th Annual OSCAL Conference Workshop
A.J. Stein & Nikita Wootten

<!--
Slide headings prefixed by an emoji follow the following legend:
- 🧩: This slide is an overview of a model
- 📝: This slide contains a live demonstration
-->

---

## ⚠️ Disclaimer

<!-- _class: workshop invert radialbg -->

All persons and organizations mentioned within this presentation are fictional and any resemblance to actual persons or organizations is unintended.

<!-- TODO: NIST disclaimer? -->

---

## Introduction

- [Who is the target audience of this talk?](#target-audience)
- [What are the key assumptions made for this talk?](#assumptions)
- [Who are we?](#who-are-we)

---

### Target audience

In order to follow along we assume that you:

1. Basic experience writing code or data (JSON, XML, YAML) in text editors
1. Understanding of security requirements for your business or mission
1. Understanding of your system and larger environment


---

### But I'm not the target audience!

We also assume you may not have these experiences.

* "But I've never been a developer!"

* "But I've never been an assessor."

* "But I've never done governance, risk, or compliance work at my job!"

---

### But I'm not the target audience! (continued)

That is OK, we are very happy you're here!

* Somewhere, somehow, you are a member of an organization.
* In that organization, you are part of an information security program.
* In the present or future, you will use systems, and they will use OSCAL.
* We want to show how shared specifications across multiple tools and vendors may impact your organization and how people work in many roles.

---

### Assumptions

The goal of this presentation is to demonstrate *a* workflow showcasing how OSCAL and a GRC service *could* interact within your organization.

---

### Who are we?

<!-- TODO include some icons here -->

* Developer - Developing the application
* System Engineer - Deploying and maintaining the application in the system

---

<!-- _class: workshop shrink -->

### Environment setup

![bg left](./support/qrcode_repo.png)

In order to follow along:

1. A computer (macOS or Windows, Linux, patched and updated)
    - ⚠️ Windows users will require the [WSL backend](https://learn.microsoft.com/en-us/windows/wsl/install)
1. [Visual Studio Code](https://code.visualstudio.com/#alt-downloads)
1. [Docker Desktop](https://www.docker.com/products/docker-desktop/) if on macOS or Windows, [Docker Engine](https://docs.docker.com/engine/) if on Linux

📝 You do not have to follow along to learn from this presentation.

---

<!-- _class: whitebg -->

## The opening act (why are we here?)

Our fictional organization, IFA, wants the GoodRead product team to use OSCAL on this new project and report back on how it improves the project lifecycle.

![IFA's GitHub page](./support/screenshot_ifa_github.png)

We have been tasked with designing and documenting this new system.

---

### The project

- Important Federal Agency needs a link shortener (let's call it **IFA GoodRead**)
- How will it work?
    - Staff log into GoodRead admin portal
    - Take a URL like `https://www.ifa.gov/2023/04/19/request-for-comment-on-new-guidance-for-2023-fiscal-year`
    - Generate a short link like `https://from.ifa.gov/2023rfc`
    - Share short link with public
    - Track audience metric from short link usage

---

## The valley of despair

- IFA has lots of mandatory policies and recommended processes
- Systems must start, change, or stop through the IFA SDLC
- Not just developers create and manage a system
    - Technical and non-technical staff must frequently collaborate
    - They write about what they have and do in the project
    - They have to keep documentation current long SDLC phases

---

## The valley of despair (continued)

* How did they do it before?
    - Staff created Microsoft Word and PDF documents
    - Colleagues reviewed individually, made comments, emailed draft feedback
    - Frequent meetings occurred to clear up ambiguities in documents
* Why didn't they like it before?
    - Data was unstructured and hard to manage
    - Quality checking across multiple related documents was labor intensive
    - Quick spot check of system development or operation difficult

---

## The valley of despair (continued)

IFA staff were not so happy.

---


## Leaving the valley of despair (continued)

* How will the IFA GoodRead Team do now?
    - They built a GRC program with a centralized service
    - Staff use web application or APIs
    - Little reliance on Microsoft Word or PDF documents
* What does the IFA CISO office expect to happen now?
    - GRC service has structured data for efficient analysis
    - Most quality checking is done by GRC
    - GRC indicates status or progress on the system lifecyle

---

## The valley of despair (continued)

IFA staff are a little happier now.

---

## How could we leverage OSCAL as developers?

Although *each organization will use OSCAL differently*, it provides some key benefits:

- Developers can document systems with code, with all the benefits of modularization.
- GRC tools and services can exchange data with standard data models.
- Vendors can provide security information about their products in components.

<!--
TODO: Create the following slides:
How do those roles collaborate with OSCAL? (*a* way they interact, this is not prescriptive)
    1. Developers write SSP store in VCS (GitHub)
    1. VCS copy of SSP uploaded to GRC tool
    1. ISSM reviews in GRC tool
    1. During assessment, assessors send AP to AO/ISSM/developer
    1. Devs submit evidence to assessors in AR against AP in GRC tool
-->

---

## Let's try OSCAL

*A potential* OSCAL workflow framed within a *SDLC process*: 

1. **Prepare** the project and its system
1. **Categorize** the system's data
1. **Select** controls for the system
1. **Implement** the system and its security
1. **Assess** system's security
1. **Authorize** the system for operation
1. **Monitor** the system

<!--
5. A new hope (let's try OSCAL) (the bulk of the presentation)
    1. Setup (write metadata with name, party, contact info)
    1. Introduce the application (link shortener)
    2. Describe the system (deployment)
    1.Pick the controls
        * Retrieve a list of controls from our ITSO (from GRC Tool manager for ITSO's office)
        * Perform profile resolution and retrieve derived catalog
        * Compare the output resolved catalog (describe the utility)
    1. Describe the system
        * Review the system (what controlled by who)
        * Perform validation
    1. Write about the system in the SSP
        * Introduce automation with GHA?
    1. Assess the system in the SSP, GRC drops AR
    1. Devs review AR and create POA&M
    1. GRC tool checks POA&M and AR for updates
6. Conclusion (bring back the word document, compare the benefits)
-->

---

## Let's try OSCAL (continued)

1. Prepare the project and its system
1. Categorize the system's data
1. Select controls for the system
1. Implement the system and its security
1. Assess system's security
1. Authorize the system for operation
1. Monitor the system

---

<!-- _class: whitebg -->

### OSCAL basics

OSCAL describes a set of *models* for documenting a system in machine readable formats (JSON, XML, YAML).

![oscal layers](https://pages.nist.gov/OSCAL/concepts/layer/oscal-layers.svg)

---

<!-- _class: whitebg -->

#### How do we edit OSCAL content?

![bg right 100%](./support/screenshot_model_reference.png)

- Refer to the [OSCAL model documentation](https://pages.nist.gov/OSCAL/reference/latest/complete/) (pictured)
- Configure your editor to use OSCAL's [JSON/YAML](https://github.com/usnistgov/OSCAL/tree/d3a2b990e24210c253642451e30ea6db99bd045b/json/schema) and [XML](https://github.com/usnistgov/OSCAL/tree/d3a2b990e24210c253642451e30ea6db99bd045b/xml/schema) **schemas**.
    - ⚠️ OSCAL imposes additional constraints not represented within the schemas.

---

#### Leveraging OSCAL tooling

OSCAL tools, such as the [OSCAL-CLI](https://github.com/usnistgov/oscal-cli), provide additional functionality:

- Converting documents between formats (JSON, YAML, XML)
    ```
    $ oscal-cli profile convert basic-profile.json basic-profile.xml
    ```

- Validating OSCAL documents
    ```
    $ oscal-cli profile validate basic-profile.json
    ```

- Performing specific OSCAL operations (profile resolution)
    ```
    $ oscal-cli profile resolve basic-profile.json
    ```

---

### Prepare

![prepare](./support/generated/rmf1_prepare.svg)

---

### Categorize

![categorize](./support/generated/rmf2.1_categorize.svg)

---

### Categorize (continued)

![categorize](./support/generated/rmf2.2_categorize.svg)

---

#### 🧩 The OSCAL system security plan (SSP) model

![bg right 53%](https://pages.nist.gov/OSCAL/concepts/layer/implementation/ssp/SSP-model.svg)

> An SSP describes the control implementation of an information system.

---

#### 📝 Our basic SSP

<!--
Note: Live demo here

Create the basic SSP
-->

---

### Categorize (continued)

![categorize](./support/generated/rmf2.3_categorize.svg)

---

### Select controls

![select](./support/generated/rmf3_select.svg)

---

### Implement

![implement](./support/generated/rmf4_implement.svg)

---

#### 🧩 The OSCAL catalog model

![bg right 70%](https://pages.nist.gov/OSCAL/concepts/layer/control/catalog/catalog-model.svg)

> A catalog describes a collection of security controls and related control enhancements, along with contextualizing documentation and metadata.

---

#### 🧩 The OSCAL profile model

![bg right 60%](https://pages.nist.gov/OSCAL/concepts/layer/control/profile/profile-model.svg)

> A profile designates a selection and configuration of controls from one or more catalogs, along with a series of operations over them.

---

#### 📝 Our profile

<!--
Note: Live demo here

Create a profile with our control selection
-->

---

#### Obtaining a resolved catalog from our selection


---

#### IFA GoodReads: Defining the system

![bg right 65%](./support/generated/system.svg)

---

#### 📝 Our updated system security plan

<!--
Note: Live demo here

Update the SSP with our systems
-->

---

### Assess: Plan

![assess-plan](./support/generated/rmf5.1_assess_plan.svg)

---

#### 🧩 The OSCAL assessment plan model

![bg right 42%](https://pages.nist.gov/OSCAL/concepts/layer/assessment/assessment-plan/assessment-plan-model.svg)

> An assessment plan describes the information typically provided by an assessor during the preparation for an assessment.

---

#### 📝 Our assessment plan

<!--
Note: Live demo here

Create our basic assessment plan
-->

---

### Assess: generate results

![assess-plan](./support/generated/rmf5.2_assess_results.svg)

---

#### 🧩 The OSCAL assessment results model

<!-- TODO edit the source files to make this more legible -->
![bg right 31%](https://pages.nist.gov/OSCAL/concepts/layer/assessment/assessment-results/assessment-results-model.svg)

> An assessment results document describes the information typically provided by an assessor following an assessment.

---

#### 📝 Our assessment results

<!--
Note: Live demo here

Go through an already created assessment results file
-->

---

#### 🤖 Opportunity for automation

<!-- _class: whitebg -->

<!--
The astute among you may be thinking: "I could generate evidence for assessment results in CI/CD pretty easily."

We agree! In a separate presentation we have explored this idea with a small GitHub actions workflow that generated assessment results automatically.
-->

![bg right](./support/qrcode_case-study.png)

Evidence generation for assessment results can be [automated with OSCAL](https://github.com/usnistgov/blossom-case-study).

---

### Assess: Generate Plan of Action and Milestones (POA&M)

![assess-poam](./support/generated/rmf5.3_assess_poam.svg)

---

#### 🧩 The OSCAL plan of actions & milestones (POA&M) model

![bg right 49%](https://pages.nist.gov/OSCAL/concepts/layer/assessment/poam/poam-model.svg)

> A POA&M document describes the information typically provided by an assessor during the preparation for an assessment.

---

#### 📝 Our plan of action and milestones

<!--
Note: Live demo here
-->

---

### Assess: Finishing touches

![assess-end](./support/generated/rmf5.4_assess_end.svg)

---

### Authorize

![authorize](./support/generated/rmf6_authorize.svg)

---

### Continuously monitor

![monitor](./support/generated/rmf7_monitor.svg)

---

<!-- _class: whitebg -->

#### 🌊 The flow of information
The models build on one-another iteratively

![OSCAL flow](./support/OSCAL_information_flow.png)

---

### Making OSCAL documents reusable

![bg right 65%](./support/generated/system.svg)

Our organization uses a lot of the same pieces across all of our applications (*AwesomeCloud Compute Server*, *Postgres*, etc)

How do we reuse the systems in other deployments?

---

#### 🧩 The OSCAL component definition (CDEF) model

![bg right 75%](https://pages.nist.gov/OSCAL/concepts/layer/implementation/component-definition/component-model.svg)

> A component definition describes the implementation of controls in a component or a set of components (technical or procedural) grouped as a capability.

*⚠️ NOTE: the component definition model is currently a Work-in-Progress*

---

#### 📝 Breaking our SSP into component definitions

<!--
Note: Live demo here
-->

---

<!-- _class: workshop invert radialbg -->

## What have we learned?

* 🧩 All of the OSCAL models and how they relate to one-another
* 📝 The basics of editing and validating OSCAL documents
* 🔍 Describing systems, security documentation, and assessment data with OSCAL
