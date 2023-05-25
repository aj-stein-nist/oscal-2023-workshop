# OSCAL 2023 Workshop

All slides and supporting slide content lives in this directory.
Pre-rendered slides can be downloaded from the [Releases](https://github.com/aj-stein-nist/oscal-2023-workshop/releases) page of this repository.

## Workshop Details

This presentation was originally built for the [2023 OSCAL Conference workshop](https://csrc.nist.gov/Events/2023/4th-annual-oscal-conference), but the concepts presented can be applied outside of the workshop.

The original workshop was intended to have a running time of 3 hours, but the presentation time will depend on the depth of the discussion of the models that presenters go into.

## Building

The presentations in this repository are created using [MARP](https://marp.app/), a Markdown-based presentation format.
The diagrams for this presentation are generated using [Mermaid](https://mermaid.js.org/).

To generate export the presentation to HTML and PDF run `make presentations`.
Other common operations, such as generating supporting content, are defined in the [`Makefile`](./Makefile) and can be summarized with `make help`.
