
DOCKER_IMAGE = fabianbaier/redirect-server
DOCKER_TAG := $(shell git rev-parse HEAD)
APP_ID = /redirect-server

.PHONY: help
help:
	@echo "Please choose one of the following targets:"
	@echo "  all, docker.build, docker.push, clean"
	@exit 0

.PHONY: all
all: docker.push

.PHONY: docker.build
docker.build:
	docker build -t $(DOCKER_IMAGE):$(DOCKER_TAG) .

.PHONY: docker.push
docker.push: docker.build
	docker push $(DOCKER_IMAGE):$(DOCKER_TAG)
