FROM nvidia/cuda:8.0-cudnn6-devel

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    graphviz \
    python3-dev \
    python3-pip \
    python3-setuptools \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN pip3 install --upgrade pip && \
    pip3 install mxnet-cu80 graphviz requests jupyter
