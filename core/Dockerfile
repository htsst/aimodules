FROM nvidia/cuda:8.0-cudnn6-devel

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    wget \
    bzip2 \
    gcc \
    g++ \
    libibverbs-dev && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN wget --no-check-certificate \
    https://www.open-mpi.org/software/ompi/v2.1/downloads/openmpi-2.1.1.tar.bz2 && \
    tar xvjf openmpi-2.1.1.tar.bz2 && \
    cd openmpi-2.1.1 && \
    ./configure --prefix=/usr/local/openmpi-2.1.1 \
    		-enable-orterun-prefix-by-default \
		--enable-mpirun-prefix-by-default \
		--enable-static \
		--enable-shared \
		--with-verbs \
		--with-cuda

