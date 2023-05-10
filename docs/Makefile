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

# Export the given markdown presentation to html
%.html: %.md node_modules support
	npx @marp-team/marp-cli $*.md -o $*.html

MARP_FILES:=$(wildcard pt*.md)
EXPORTED_FILES:=$(patsubst pt%.md,pt%.html,$(MARP_FILES))

presentations: $(EXPORTED_FILES) ## Export all presentations to HTML
	@echo Generated presentations...

#
# Support generation
#

SUPPORT_DIR:=support
GEN_SUPPORT_DIR:=$(SUPPORT_DIR)/generated

# Ensure generated content has a place to go
$(GEN_SUPPORT_DIR):
	mkdir -p $(GEN_SUPPORT_DIR)

MERMAID_FLAGS:=-t default -b transparent
# Export the given Mermaid diagram to SVG
$(GEN_SUPPORT_DIR)/%.svg: $(SUPPORT_DIR)/%.mermaid node_modules $(GEN_SUPPORT_DIR)
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
	rm -f support/generated/* pt*.html