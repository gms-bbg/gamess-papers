#!/bin/bash

# Test new code
for i in 1 2 4 8 12 18 24 36
do
    ./rgm.sh phe 2 $i
    ipcrm -a
done

# Test legacy code
for i in 1 2 4 8 12 18 24 36
do
    ./rgm.sh phe-leg $((2*i)) 1
    ipcrm -a
done
