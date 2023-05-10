---
marp: true
title: "Part 1: How do I OSCAL?"
author: A.J. Stein, Nikita Wootten
theme: default
class: invert
footer: How do I OSCAL? - 4th Annual OSCAL Conference Workshop
paginate: true
---

# How do I OSCAL?
### 4th Annual OSCAL Conference Workshop
A.J. Stein & Nikita Wootten

---

## Disclaimer

<!-- TODO: NIST disclaimer? -->

All persons and organizations mentioned within this presentation are fictional and any resemblance to actual persons or organizations is purely coincidental.

---

## Introduction

* [Who is the target audience of this talk?](#target-audience)
* [What are the key assumptions made for this talk?](#assumptions)
* [Who are we?](#who-are-we)

---

### Target audience

In order to follow along we assume that you:

1. Basic experience writing code or data (JSON, XML, YAML) in text editors
1. Understanding of security requirements for your business or mission
1. Understanding of your system and larger environment

<!-- TODO insert a blurb here reassuring people not in this audience they can also follow along -->

---

### Assumptions

<!-- TODO -->

---

### Who are we?

<!-- TODO include some icons here -->

* Developer
    Designing the application
* System Engineer
    Deploying and maintaining the application

---

### Environment setup

![bg left](./support/repo_qr_code.png)

In order to follow along:

1. A computer (macOS or Windows, patched and updated)
    1. Windows users will require the [WSL backend](https://learn.microsoft.com/en-us/windows/wsl/install)
1. [Visual Studio Code](https://code.visualstudio.com/#alt-downloads)
1. [Docker Desktop](https://www.docker.com/products/docker-desktop/)

You do not have to follow along to learn from this presentation.

---

## The inciting incident

Our fictional organization, IFA, has chosen to adopt OSCAL on a new project key to the wellbeing of the public.

![IFA's GitHub page](./support/ifa_github_screenshot.png)

We have been tasked with designing and documenting this new system.

---

### The project

<!-- TODO introduce the link shortener -->

---

## The valley of despair

<!--
TODO: Create the following slides:
1. How roles interact when documentation is unstructured
2. How roles interact when GRC tooling is not interoperable
-->

---

## How could we use OSCAL?

<!--
TODO: Create the following slides:
How do those roles collaborate with OSCAL? (*a* way they interact, this is not perscriptive)
    1. Developers write SSP store in VCS (GitHub)
    1. VCS copy of SSP uploaded to GRC tool
    1. ISSM reviews in GRC tool
    1. During assessment, assessors send AP to AO/ISSM/developer
    1. Devs submit evidence to assessors in AR against AP in GRC tool
-->

---

## Let's try OSCAL

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
