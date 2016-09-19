all: build

build:
	@docker build --tag=hrektts/gitlab-ci-multi-runner-doxygen:latest .

release: build
	@docker build --tag=hrektts/gitlab-ci-multi-runner-doxygen:$(shell cat VERSION) .
