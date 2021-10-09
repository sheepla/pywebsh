NAME = pywebsh

PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin
SHAREDIR := $(PREFIX)/share

SRC := $(NAME)
DEST := $(BINDIR)/$(NAME)
LICENSE_SRC := LICENSE
LICENSE_DEST_DIR := $(SHAREDIR)/licenses/$(NAME)
LICENSE_DEST := $(LICENSE_DEST_DIR)/LICENSE

.PHONY: help
help: ## Print help documents
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.PHONY: install
install: ## Install programs
	install -Dm 0755 $(SRC) $(DEST)
	install -d $(LICENSE_DEST_DIR)
	install -Dm644 $(LICENSE_SRC) $(LICENSE_DEST)

.PHONY: uninstall
uninstall: ## Uninstall programs
	rm $(DEST)
	rm -r $(LICENSE_DEST_DIR)

.PHONY: format
format: ## Format code and write a file
	black $(SRC)

.PHONY: lint
lint: ## Lint code
	flake8 $(SRC)

