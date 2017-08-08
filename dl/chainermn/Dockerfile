FROM htsst/hpcbase:ubuntu16.04-cuda8.0-cudnn6-openmpi2.1.1

RUN apt-get update -y && apt-get install -y --no-install-recommends \
    python3-dev \
    python3-pip \
    python3-setuptools \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/archives/*

RUN pip3 install --upgrade pip 
                                                    
RUN ln -s /usr/local/cuda/lib64/stubs/libnvidia-ml.so /usr/local/cuda/lib64/stubs/libnvidia-ml.so.1
RUN env LD_LIBRARY_PATH=/usr/local/cuda/lib64/stubs:${LD_LIBRARY_PATH} \
    	MPICC="/opt/oepnmpi/2.1.1/bin/mpicc" pip3 install mpi4py
RUN rm /usr/local/cuda/lib64/stubs/libnvidia-ml.so.1

RUN pip3 install cython 
RUN env LD_LIBRARY_PATH=/usr/local/cuda/lib64/stubs:${LD_LIBRARY_PATH} \
    	CUDA_PATH="/usr/local/cuda" pip3 install cupy
RUN pip3 install chainer
RUN pip3 install chainermn
