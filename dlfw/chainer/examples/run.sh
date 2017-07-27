#!/bin/bash

git clone https://github.com/pfnet/chainer
python3 ./chainer/examples/mnist/train_mnist.py -g 0
