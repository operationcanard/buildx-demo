# syntax=docker/dockerfile:1.1.7-experimental
FROM python:3.7

RUN --mount=type=cache,target=/root/.cache/pip \
    pip install numpy matplotlib


RUN apt-get update && apt-get install openssh-server
