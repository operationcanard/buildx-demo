set -e

export DOCKER_CLI_EXPERIMENTAL=enabled
docker buildx build --secret=id=id_rsa,src=$HOME/.ssh/id_rsa .
