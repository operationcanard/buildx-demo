# Docker buildx

#### What is it?
Docker build 2.0

#### Documentation:

<https://github.com/docker/buildx>

<https://github.com/moby/buildkit/blob/master/frontend/dockerfile/docs/experimental.md>

#### What is new?

* Supports for secrets

* Concurrent build of multi-staged builds

* Multi-platform builds: amd64,arm...

* Mount files/directories for a single instruction

* Add a cache directory to your dockerfiles

* Remote build cache (supported by dockerhub but not aws yet) (not in the demo)

* Output single binaries/directories instead of Docker images, 
  useful for compilation of binaries or Python wheels (not in the demo)

* `docker buildx bake` to build multiple images at the same time
