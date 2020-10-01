set -e

export DOCKER_CLI_EXPERIMENTAL=enabled
docker buildx build --progress=plain .
