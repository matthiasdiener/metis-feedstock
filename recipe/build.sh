#!/bin/bash

set -ex

make config \
     shared=1 \
     prefix=$PREFIX

make
make install
