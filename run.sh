#!/bin/bash

export OMP_NUM_THREADS=128
export OMP_WAIT_POLICY=active
export KMP_BLOCKTIME=infinite
hpcrun  -o hpctoolkit-all-measurements -e cycles -t ./test -P 1 1 1 -n 2 2 4  -r 10 10 10
