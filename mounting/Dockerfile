# syntax=docker/dockerfile:1.1.7-experimental
FROM python:3.7

RUN --mount=src=requirements.txt,target=/requirements.txt \
    pip install -r /requirements.txt

# the requirements.txt isn't there anymore

RUN python -c "import numpy as np"
