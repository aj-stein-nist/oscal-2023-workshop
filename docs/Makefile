SHELL:=/usr/bin/env bash

.PHONY: help
# Run "make" or "make help" to get a list of user targets
# Adapted from https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?##.*$$' $(MAKEFILE_LIST) | awk 'BEGIN { \
	 FS = ":.*?## "; \
	 printf "\033[1m%-30s\033[0m %s\n", "TARGET", "DESCRIPTION" \
	} \
	{ printf "\033[32m%-30s\033[0m %s\n", $$1, $$2 }'

#
# Support generation
#

SUPPORT_DIR:=support
GEN_SUPPORT_DIR:=$(SUPPORT_DIR)/generated

MERMAID_FLAGS:=-b transparent --configFile $(SUPPORT_DIR)/mermaid-config.json
# Export the given Mermaid diagram to SVG
$(GEN_SUPPORT_DIR)/%.svg: $(SUPPORT_DIR)/%.mermaid node_modules $(SUPPORT_DIR)/mermaid-config.json
	mkdir -p $(GEN_SUPPORT_DIR)
	npx @mermaid-js/mermaid-cli -i $(SUPPORT_DIR)/$*.mermaid -o $(GEN_SUPPORT_DIR)/$*.svg $(MERMAID_FLAGS)

MERMAID_FILES:=$(wildcard $(SUPPORT_DIR)/*.mermaid)
MERMAID_SVG_FILES:=$(patsubst $(SUPPORT_DIR)/%.mermaid,$(GEN_SUPPORT_DIR)/%.svg,$(MERMAID_FILES))

.PHONY: support
support: $(MERMAID_SVG_FILES) ## Generate presentation support
	@echo Generated presentation support...

#
# Presentation exportation
#

.PHONY: presentations
presentations: presentations-html presentations-pdf ## Export all presentations to HTML and PDF

MARP_FILES:=$(wildcard presentation_*.md)
MARP_FLAGS:=--allow-local-files --theme-set $(SUPPORT_DIR)/csd-workshop2023.css

EXPORTED_FILES:=$(patsubst presentation_%.md,presentation_%.html,$(MARP_FILES))

# Export the given markdown presentation to html
%.html: %.md node_modules support
	npx @marp-team/marp-cli -o $*.html $(MARP_FLAGS) -- $*.md

.PHONY: presentations-html
presentations-html: $(EXPORTED_FILES) ## Export all presentations to HTML
	@echo Generated presentation HTML...

EXPORTED_FILES_PDF:=$(patsubst presentation_%.md,presentation_%.pdf,$(MARP_FILES))

# Export the given markdown presentation to pdf
%.pdf: %.md node_modules support
	npx @marp-team/marp-cli -o $*.pdf $(MARP_FLAGS) -- $*.md

.PHONY: presentations-pdf
presentations-pdf: $(EXPORTED_FILES_PDF) ## Export all presentations to PDF
	@echo Generated presentation PDFs...

#
# Dependencies/misc
#

.PHONY: dependencies
dependencies: node_modules ## Download dependencies
	@echo Downloaded dependencies...

# Ensure dependencies have been downloaded
node_modules: package.json package-lock.json
	npm ci

.PHONY: clean
clean: clean-presentations clean-support ## Remove exported presentations and support

.PHONY: clean-support
clean-support: ## Remove generated presentation support (SVGs, etc.)
	rm -f support/generated/*

.PHONY: clean-presentations
clean-presentations: ## Remove exported presentations (HTML and PDFs)
	rm -f presentation_*.html presentation_*.pdf
