FROM nvidia/cuda:11.0-base as basic_ubuntu_cuda

RUN echo 'APT::Get::Assume-Yes "true";' >> /etc/apt/apt.conf.d/force_yes
RUN apt-get update && apt-get install wget

# -------------------------------------------------------------------
FROM basic_ubuntu_cuda as python_install

RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    /bin/bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh

ENV PATH="/opt/conda/bin:${PATH}"

RUN pip install numpy matplotlib jupyter

# -------------------------------------------------------------------
FROM basic_ubuntu_cuda as final_image

RUN apt-get update && apt-get install sqitch libdbd-sqlite3-perl telnet zsh iputils-ping htop

COPY --from=python_install /opt/conda /opt/conda
ENV PATH="/opt/conda/bin:${PATH}"

COPY --from=docker:19.03 /usr/local/bin/docker /usr/bin/docker

# check that everything works:
RUN python -c "import numpy as np"
RUN docker --help
