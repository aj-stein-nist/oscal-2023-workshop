---
marp: true
title: "Part 1: How do I OSCAL?"
author: A.J. Stein, Nikita Wootten
theme: csd-workshop2023
class: invert workshop
footer: "![width:60px invert](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
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
- [Environment setup](#environment-setup)

---

### Target audience

In order to follow along we assume that you:

1. Basic experience writing code or data (JSON, XML, YAML) in text editors
1. Understanding of security requirements for your business or mission
1. Understanding of your system and the larger context of your projects


---

### But I'm not the target audience!

We also assume you may not have these experiences.

* "But I've never been a developer!"
* "But I've never been an assessor!"
* "But I've never done governance, risk, or compliance work at my job!"

---

### But I'm not the target audience! (continued)

That is OK, we are very happy you're here!

* Somewhere, somehow, you are a member of an organization.
* In that organization, you are part of an information security program. 

---

### But I'm not the target audience! (continued)

That is OK, we are very happy you're here!

* In the present or future, you will use compliance and security tools that use OSCAL.
* Shared specifications may standardize information and behavior for multiple tools from different vendors.
* Changed tools and processes will impact your organization and work.

---

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop shrink
-->

### Environment setup

![bg left](./support/qrcode_repo.png)

In order to follow along:

1. A computer (macOS or Windows, Linux, patched and updated)
    - ⚠️ Windows users will require the [WSL backend](https://learn.microsoft.com/en-us/windows/wsl/install)
1. [Visual Studio Code](https://code.visualstudio.com/#alt-downloads)
1. [Docker Desktop](https://www.docker.com/products/docker-desktop/) if on macOS or Windows, [Docker Engine](https://docs.docker.com/engine/) if on Linux

📝 You do not have to follow along to learn from this presentation.

---

### Assumptions

<!-- _class: workshop invert radialbg -->

The goal of this presentation is to demonstrate *a* workflow showcasing how OSCAL and a GRC service *could* interact within your organization.

---

### Who are we?

<!-- TODO include some icons here -->

* Developer - Developing the application
* System Engineer - Deploying and maintaining the application in the system

---

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
- Projects must start, change, or stop through the IFA SDLC
- Not just developers and engineers create and manage a system:
    - Technical and non-technical staff must frequently collaborate
    - They write about what they have and do in the project
    - They have to keep documentation current in long SDLC phases

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

1. **Prepare** the project and its system
    * Bootstrap OSCAL files with preparatory info
2. **Categorize** the system's data
    * Add system information types in OSCAL SSP
    * Add system categorization in OSCAL SSP

---

## Let's try OSCAL (continued)

3. **Select** controls for the system
    * Retrieve import profile for OSCAL SSP to identify selected controls
    * Generate resolved OSCAL catalog from OSCAL profile
4. **Implement** the system and its security
    * Add "this system" component in OSCAL SSP
    * Add control implementation in OSCAL
---

## Let's try OSCAL (continued)

5. **Assess** system's security
    * Retrieve OSCAL AP
    * Perform assessment activities in OSCAL AP
    * Create OSCAL AR documenting assessment activities, supporting evidence, and results
    * Upload OSCAL AR to GRC
    * Create OSCAL POA&M and upload to GRC
6. **Authorize** the system for operation
    * Retrieve updated OSCAL SSP with authorization data
    * Deploy system

---

## Let's try OSCAL (continued)

7. **Monitor** the system
    * Review OSCAL POA&M and check if findings obsolete
    * Retrieve OSCAL AP for continuous monitoring steps
    * Perform continuous monitoring activities
    * Create OSCAL AR documenting activities, supporting evidence, and results
    * Create and update OSCAL POA&M if needed
---

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

### OSCAL basics

OSCAL describes a set of *models* for documenting a system in machine readable formats (JSON, XML, YAML).

![oscal layers](https://pages.nist.gov/OSCAL/concepts/layer/oscal-layers.svg)

---

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

#### How do we edit OSCAL content?

![bg right 100%](./support/screenshot_model_reference.png)

- Refer to the [OSCAL model documentation](https://pages.nist.gov/OSCAL/reference/latest/complete/) (pictured)
- Configure your editor to use OSCAL's [JSON/YAML](https://github.com/usnistgov/OSCAL/tree/d3a2b990e24210c253642451e30ea6db99bd045b/json/schema) and [XML](https://github.com/usnistgov/OSCAL/tree/d3a2b990e24210c253642451e30ea6db99bd045b/xml/schema) **schemas**.
    - ⚠️ OSCAL imposes additional constraints not represented within the schemas.

---

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

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

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

#### 🧩 The OSCAL system security plan (SSP) model

![bg right 53%](https://pages.nist.gov/OSCAL/concepts/layer/implementation/ssp/SSP-model.svg)

> An SSP describes the control implementation of an information system.

---

#### 📝 Our basic SSP

[🔗 appendix slides](#appendix-a-our-starter-ssp)

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

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

#### 🧩 The OSCAL catalog model

![bg right 70%](https://pages.nist.gov/OSCAL/concepts/layer/control/catalog/catalog-model.svg)

> A catalog describes a collection of security controls and related control enhancements, along with contextualizing documentation and metadata.

---

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

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

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

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

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

#### 🧩 The OSCAL assessment results model

<!-- TODO edit the source files to make this more legible -->
![bg right 60%](./support/assessment-results-model.svg)

> An assessment results document describes the information typically provided by an assessor following an assessment.

---

#### 📝 Our assessment results

<!--
Note: Live demo here

Go through an already created assessment results file
-->

---

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

#### 🤖 Opportunity for automation

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

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

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

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

#### 🌊 The flow of information
The models build on one-another iteratively

![OSCAL flow](./support/OSCAL_information_flow.png)

---

### Making OSCAL documents reusable

![bg right 65%](./support/generated/system.svg)

Our organization uses a lot of the same pieces across all of our applications (*AwesomeCloud Compute Server*, *Postgres*, etc)

How do we reuse the systems in other deployments?

---

<!--
_footer: "![width:60px](https://upload.wikimedia.org/wikipedia/commons/e/ee/NIST_logo.svg) How do I OSCAL? - 4th Annual OSCAL Conference Workshop"
_class: workshop whitebg
-->

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

---

# 📚 Appendix

- [A](#appendix-a-our-starter-ssp): Our starter SSP

---

<!-- Footer excluded from remaining slides due to content -->
<!--footer: "" -->

## Appendix A: Our starter SSP

Let's start with a skeleton of an SSP and fill in some metadata:

```xml
<system-security-plan
  uuid="cff8385f-108e-40a5-8f7a-82f3dc0eaba8"
  xmlns="http://csrc.nist.gov/ns/oscal/1.0">
  <metadata>
    <title>IFA GoodReads SSP</title>
    <last-modified>2023-05-16T13:57:28.355446-04:00</last-modified>
    <version>1.0</version>
    <oscal-version>1.0.4</oscal-version>
    <!-- Must populate roles and parties -->
  </metadata>
  <!-- To fill in: -->
  <import-profile></import-profile>
  <system-characteristics></system-characteristics>
  <system-implementation></system-implementation>
  <control-implementation></control-implementation>
</system-security-plan>
```

---

### Appendix A.i: Our starter SSP's roles and parties

We use `<role>` and `<party>` in `<metadata>` to document the kinds of work in a project, the people who do it, and the organization they work for.


```xml
...
<role id="owner">
    <title>IFA GoodRead Owner</title>
</role>
<party uuid="ba9c12bd-e5ef-46b6-95a2-4d8e7f864c1a" type="person">
    <name>Owen Owner</name>
    <member-of-organization>3a675986-b4ff-4030-b178-e953c2e55d64</member-of-organization>
</party>
<party uuid="3a675986-b4ff-4030-b178-e953c2e55d64" type="organization">
    <name>Important Federal Agency</name>
    <short-name>IFA</short-name>
    <link href="https://www.ifa.gov" rel="website"/>
</party>
<responsible-party role-id="owner">
    <party-uuid>ba9c12bd-e5ef-46b6-95a2-4d8e7f864c1a</party-uuid>
</responsible-party>
```

---

### Appendix A.ii: Our starter SSP's system characteristics

```xml
...
<system-characteristics>
    <system-id identifier-type="http://ietf.org/rfc/rfc4122">
        8101e04d-8305-4e73-bb95-6b59f645b143
    </system-id>
    <system-name>IFA GoodReads</system-name>
    <description>
        <p>This system acts as a link shortener for IFA employees</p>
    </description>
    <security-sensitivity-level>moderate</security-sensitivity-level> <!-- Determined by categorization -->
    <system-information>
        <!-- Detailed information types (next slide) -->
    </system-information>
    <security-impact-level> <!-- Determined by categorization -->
        <security-objective-confidentiality>low</security-objective-confidentiality>
        <security-objective-integrity>medium</security-objective-integrity>
        <security-objective-availability>low</security-objective-availability>
    </security-impact-level>
    <status state="under-development"></status>
    <authorization-boundary>
        <description>
            <p>This components deployed on AwesomeCloud</p>
        </description>
    </authorization-boundary>
</system-characteristics>
```

---

### Appendix A.iii: Our starter SSP's system information types

In `<system-information>` we document the information types (as defined in [FIPS-199](https://nvlpubs.nist.gov/nistpubs/fips/nist.fips.199.pdf)) present in the system.

```xml
...
<system-information>
    <information-type>
        <title>User-provided Links</title>
        <description>
            <p>This system maintains a set of user-provided links and their associated shortlinks</p>
        </description>
        <categorization system="https://doi.org/10.6028/NIST.SP.800-60v2r1">
            <information-type-id>C.2.8.12</information-type-id>
        </categorization>
        <confidentiality-impact>
            <base>fips-199-low</base>
        </confidentiality-impact>
        <integrity-impact>
            <base>fips-199-low</base>
            <selected>fips-199-moderate</selected>
            <adjustment-justification>
                <p>Maliciously modified links are a concern</p>
            </adjustment-justification>
        </integrity-impact>
        <availability-impact>
            <base>fips-199-low</base>
        </availability-impact>
    </information-type>
</system-information>
```

---

### Appendix A.iv: Our starter SSP (conclusion)

In this demonstration we have:
- Created a minimal SSP in OSCAL
- Discussed the `<metadata>` object
- Documented our system's `roles` and `parties`
- Documented the information types in our system and their categorization

⚠️ The SSP in its current state is invalid! We must fill it out with information given in later steps.

[⏪ Back to the presentation](#our-basic-ssp)
