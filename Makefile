NAME = pywebsh

PREFIX ?= /usr/local
BINDIR := $(PREFIX)/bin
SHAREDIR := $(PREFIX)/share

SRC := $(NAME)
DEST := $(BINDIR)/$(NAME)


.PHONY: help
help: ## Print help documents
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


.PHONY: install
install: ## Install programs
	install -Dm 0755 $(SRC) $(DEST)

.PHONY: uninstall
uninstall: ## Uninstall programs
	rm -f $(DEST)

.PHONY: format
format: ## Format code and write a file
	black $(SRC)

.PHONY: lint
lint: ## Lint code
	flake8 $(SRC)

