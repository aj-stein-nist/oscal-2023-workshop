---
marp: true
title: "Part 1: How do I OSCAL?"
author: A.J. Stein, Nikita Wootten
theme: default
class: invert
paginate: true
---
<!--
General flow:
1. Introduction
    1. Disclaimer
    2. Who is the target audience? What are key assumptions?
       * No example automation implemented (no example code at all)
       * Technical staff (dev, sys eng) read/write OSCAL, others consume data via OSCAL-enabled GRC tooling
    3. Environment setup
    4. Introduce the speakers and their roles in this story
    5. Describe the setting (Important Federal Agency, etc)
2. The inciting incident (my organization needs me to document this system)
    1. Introduce the roles
3. The valley of despair (you're telling me I have to pass around this hundred page word document?)
    1. How roles interact when documentation is unstructured
    2. How roles interact when GRC tooling is not interoperable
4. How do those roles collaborate with OSCAL? (*a* way they interact, this is not perscriptive)
    1. Developers write SSP store in VCS (GitHub)
    1. VCS copy of SSP uploaded to GRC tool
    1. ISSM reviews in GRC tool
    1. During assessment, assessors send AP to AO/ISSM/developer
    1. Devs submit evidence to assessors in AR against AP in GRC tool
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

# How do I OSCAL?
### 4th Annual OSCAL Conference Workshop
A.J. Stein & Nikita Wootten

---

## Disclaimer

---

## Who am I and why do I want to OSCAL?

<!-- Todo include little icons or something here -->

* Developer
    Designing the application for IFA
* System Engineer
    Deploying and maintaining the application for IFA

---

## What do I need to know to OSCAL?

1. Basic experience writing code or data (JSON, XML, YAML) in text editors
1. Understanding of security requirements for your business or mission
1. Understanding of your system and larger environment

---

## What do I need to do to OSCAL?

In order to follow along:

1. A computer (macOS or Windows, patched and updated)
1. [Visual Studio Code](https://code.visualstudio.com/#alt-downloads)
1. [Docker Desktop](https://www.docker.com/products/docker-desktop/)

---

## How do I set up my environment to perform OSCAL operations?

---

## How do I create a Catalog? Profile? SSP? Component definition?

---

## How do I validate it?

---

## How do I convert between formats?

---

## How do I make a human-readable copy of it?

---

## How do I find meaningful changes between two versions of a SSP?
