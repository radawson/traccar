SHELL := /bin/bash

VERSION ?=
PLATFORM ?= linux-64

.PHONY: help build build-server build-web package

help:
	@echo "Targets:"
	@echo "  make build                          Build server and web artifacts"
	@echo "  make build-server                   Build Java server artifacts"
	@echo "  make build-web                      Build traccar-web static assets"
	@echo "  make package VERSION=x.y.z [PLATFORM=linux-64]"
	@echo "                                      Build reinstallable package archive(s)"

build: build-server build-web

build-server:
	./gradlew clean build

build-web:
	cd traccar-web && npm ci && npm run build

package: build
	@if [ -z "$(VERSION)" ]; then \
		echo "ERROR: VERSION is required (example: make package VERSION=6.12.3 PLATFORM=linux-64)"; \
		exit 1; \
	fi
	cd setup && ./package.sh "$(VERSION)" "$(PLATFORM)"
