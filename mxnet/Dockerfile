FROM nvidia/cuda:8.0-cudnn6-devel

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    wget \
    graphviz \
    python && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py

RUN pip install mxnet-cu80 graphviz
