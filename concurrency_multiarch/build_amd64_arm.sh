set -e

export DOCKER_CLI_EXPERIMENTAL=enabled
docker buildx build --platform linux/amd64,linux/arm64 .
