VERSION := $(shell  sh -c 'cat VERSION')

IMAGENAME=ptfe-docker-image
REPO=ihuntenator
IMAGEFULLNAME=${REPO}/${IMAGENAME}:${VERSION}

clean:
	@rm -rf docker/jq docker/*.crt

build: clean
	@docker build --no-cache --pull --build-arg VERSION=$(VERSION) -t ${IMAGEFULLNAME} ./docker

push:
	@docker push ${IMAGEFULLNAME}

all: build push
