# syntax=docker/dockerfile:1.1.7-experimental
FROM python:3.7

RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

RUN --mount=type=secret,id=id_rsa,target=/root/.ssh/id_rsa \
    pip install git+ssh://git@github.com/operationcanard/env-utils.git
