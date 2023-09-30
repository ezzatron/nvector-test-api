DOCKER_REPO ?= ghcr.io/ezzatron/nvector-test-api

-include .makefiles/Makefile
-include .makefiles/pkg/docker/v1/Makefile

.makefiles/%:
	@curl -sfL https://makefiles.dev/v1 | bash /dev/stdin "$@"
