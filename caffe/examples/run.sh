#!/bin/bash

cp -a /opt/caffe/data ./
cp -a /opt/caffe/examples ./
./data/mnist/get_mnist.sh
sed -i.bak -e 's!BUILD=\(.*\)$!BUILD=/opt/caffe/\1!' ./examples/mnist/create_mnist.sh
./examples/mnist/create_mnist.sh
sed -i.bak -e 's!^\./build/tools/caffe\(.*\)$!/opt/caffe/build/tools/caffe\1!' ./examples/mnist/train_lenet.sh
grep solver_mode examples/mnist/lenet_solver.prototxt
./examples/mnist/train_lenet.sh
