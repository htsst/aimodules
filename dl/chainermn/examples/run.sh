#!/bin/bash

git clone https://github.com/chainer/chainermn.git
mpirun -np 4 python3 chainermn/examples/mnist/train_mnist.py -g 
