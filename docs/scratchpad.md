---
marp: true
title: "Scratch Pad"
author: Wendell Piez
theme: csd-workshop2023
class: invert workshop
footer: Scratch Pad - May, 2023
paginate: true
---

<!-- _paginate: false -->

# Scratch pad?

### 4th Annual OSCAL Conference Workshop

A.J. Stein & Nikita Wootten

---
<!-- _class: invert radialbg -->

## Disclaimer

All persons and organizations mentioned within this presentation are fictional and any resemblance to actual persons or organizations is purely coincidental.

<!-- TODO: NIST disclaimer? -->

---

<!-- _class: workshop invert -->

## Introduction

- [Who is the target audience of this talk?](#target-audience)
- [What are the key assumptions made for this talk?](#assumptions)
- [Who are we?](#who-are-we)

---

### Target audience
<!-- _class: workshop headed -->
In order to follow along we assume that you:

1. Basic experience writing code or data (JSON, XML, YAML) in text editors
1. Understanding of security requirements for your business or mission
1. Understanding of your system and larger environment

<!-- TODO insert a blurb here reassuring people not in this audience they can also follow along -->

---

### Assumptions

The goal of this presentation is to demonstrate *a* workflow showcasing how OSCAL and a GRC service *could* interact within your organization.

---

### Who are we?

<!-- TODO include some icons here -->

* Developer - Designing the application
* System Engineer - Deploying and maintaining the application

---

### Environment setup
<!-- _class: workshop shrink -->

![bg left](./support/qrcode_repo.png)

In order to follow along:

1. A computer (macOS or Windows, Linux, patched and updated)
    - Windows users will require the [WSL backend](https://learn.microsoft.com/en-us/windows/wsl/install)
1. [Visual Studio Code](https://code.visualstudio.com/#alt-downloads)
1. [Docker Desktop](https://www.docker.com/products/docker-desktop/) if on macOS or Windows, [Docker Engine](https://docs.docker.com/engine/) if on Linux

You do not have to follow along to learn from this presentation.

---
<!-- _class: whitebg -->

## The inciting incident

Our fictional organization, IFA, has chosen to adopt OSCAL on a new project key to the wellbeing of the public.

![IFA's GitHub page](./support/ifa_github_screenshot.png)

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
<!-- class: workshop invert headed -->

- IFA has lots of policies and processes
- Systems must start, change, or stop through SDLC
- Not just developers create and manage a system
    - Technical and non-technical staff collaboration is crucial
    - They write about what they have and do
    - They have to keep it current during long development cycles

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
<!-- class: workshop invert -->

* How do they do it now?
    - They built a GRC program with a centralized service
    - Staff use web application or APIs
    - Little reliance on Microsoft Word or PDF documents
* What do they like about it now?
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

*A potential* OSCAL workflow framed within the *RMF process*: 

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

### Prepare

![prepare](./support/generated/rmf1_prepare.svg)

---

### Categorize

![categorize](./support/generated/rmf2.1_categorize.svg)

---

### Categorize (continued)

![categorize](./support/generated/rmf2.2_categorize.svg)

---

#### The OSCAL System Security Plan Model

---

#### Editing OSCAL content


---

#### Validating OSCAL content

---

#### Our basic SSP

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

#### The OSCAL Catalog Model

---

#### The OSCAL Profile Model

---

#### Our profile

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

#### Our updated system security plan

<!--
Note: Live demo here

Update the SSP with our systems
-->

---

### Assess: Plan

![assess-plan](./support/generated/rmf5.1_assess_plan.svg)

---

#### The OSCAL Assessment Plan Model

---

#### Our assessment plan

<!--
Note: Live demo here

Create our basic assessment plan
-->

---

### Assess: Generate Results

![assess-plan](./support/generated/rmf5.2_assess_results.svg)

---

#### The OSCAL Assessment Results Model

---

#### Our assessment results

<!--
Note: Live demo here

Go through an already created assessment results file
-->

---

#### Opportunity for automation

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

#### The OSCAL POA&M Model

---

#### Our plan of action and milestones

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


