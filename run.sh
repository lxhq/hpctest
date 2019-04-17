#!/bin/bash
for i in 1 2 4 8 16 32 64 128; do
    echo the thread number is $i
    for j in f300 f500 f1000 f2000 f4000 f6000 f8000; do
        echo the sample frequency is $j
        for k in 1 2 3; do
            echo test $k
            export OMP_NUM_THREADS=$i
            time hpcrun -t -e CYCLES@$j ./test
        done
    done
done
