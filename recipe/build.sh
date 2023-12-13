#!/bin/bash

set -ex

make config \
     shared=1 \
     gklib_path=$PREFIX \
     prefix=$PREFIX

make
make install
