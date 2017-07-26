FROM nvidia/cuda:8.0-cudnn6-devel

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    wget \
    bzip2 \
    gcc \
    g++ \
    make \
    openssh-client \
    libnccl-dev \
    libibverbs-dev && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/* 

ENV OPENMPI_VERSION 2.1.1

WORKDIR /tmp

RUN wget --no-check-certificate \
    https://www.open-mpi.org/software/ompi/v2.1/downloads/openmpi-${OPENMPI_VERSION}.tar.bz2 && \
    tar xvjf openmpi-${OPENMPI_VERSION}.tar.bz2

WORKDIR openmpi-${OPENMPI_VERSION}

RUN ./configure --prefix=/opt/openmpi/${OPENMPI_VERSION} \
    		-enable-orterun-prefix-by-default \
		--enable-mpirun-prefix-by-default \
		--enable-static \
		--enable-shared \
		--with-verbs \
		--with-cuda && \
    make -j && \
    make install

WORKDIR /workspace

ENV PATH /opt/openmpi/${OPENMPI_VERSION}/bin:${PATH}
ENV LD_LIBRARY_PATH /opt/openmpi/${OPENMPI_VERSION}/lib:${LD_LIBRARY_PATH}
