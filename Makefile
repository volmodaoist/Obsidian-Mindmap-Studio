.DEFAULT_GOAL := help
.PHONY: help build test lint check install

# Pass the raw path through the environment rather than shell interpolation.
export MINDMAP_STUDIO_VAULT := $(value vault)

help:
	@node scripts/install.mjs --help

build:
	npm run build

test:
	npm test

lint:
	npm run lint

check:
	npm run check:gates

install:
	node scripts/install.mjs
