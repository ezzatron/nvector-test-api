DOCKER_REPO ?= ghcr.io/ezzatron/nvector-test-api

CHANGELOG_TAG_URL_PREFIX := https://github.com/ezzatron/nvector-test-api/releases/tag/

################################################################################

-include .makefiles/Makefile
-include .makefiles/pkg/docker/v1/Makefile
-include .makefiles/pkg/changelog/v1/Makefile

.makefiles/%:
	@curl -sfL https://makefiles.dev/v1 | bash /dev/stdin "$@"
