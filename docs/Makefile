SHELL:=/usr/bin/env bash

.PHONY: help presentations support dependencies clean

# Run "make" or "make help" to get a list of user targets
# Adapted from https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?##.*$$' $(MAKEFILE_LIST) | awk 'BEGIN { \
	 FS = ":.*?## "; \
	 printf "\033[1m%-30s\033[0m %s\n", "TARGET", "DESCRIPTION" \
	} \
	{ printf "\033[32m%-30s\033[0m %s\n", $$1, $$2 }'

#
# Presentation exportation
#

MARP_FILES:=$(wildcard pt*.md)
MARP_FLAGS:=--allow-local-files

EXPORTED_FILES:=$(patsubst pt%.md,pt%.html,$(MARP_FILES))

# Export the given markdown presentation to html
%.html: %.md node_modules support
	npx @marp-team/marp-cli $(MARP_FLAGS) $*.md -o $*.html

presentations: $(EXPORTED_FILES) ## Export all presentations to HTML
	@echo Generated presentations...

EXPORTED_FILES_PDF:=$(patsubst pt%.md,pt%.pdf,$(MARP_FILES))

# Export the given markdown presentation to pdf
%.pdf: %.md node_modules support
	npx @marp-team/marp-cli $(MARP_FLAGS) $*.md -o $*.pdf

presentations-pdf: $(EXPORTED_FILES_PDF) ## Export all presentations to PDF
	@echo Generated presentation PDFs...

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

support: $(MERMAID_SVG_FILES) ## Generate presentation support
	@echo Generated presentation support...

#
# Dependencies/misc
#

dependencies: node_modules ## Download dependencies
	@echo Downloaded dependencies...

# Ensure dependencies have been downloaded
node_modules: package.json package-lock.json
	npm ci

clean: ## Remove generated presentation output and support
	rm -f support/generated/* pt*.html pt*.pdf