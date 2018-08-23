#!/bin/bash

if [ $# -ne 2 ]
then
    echo Usage: $0 [file] [# column]
    exit 1
fi

awk '{sum0+=1; sum1+=$'$2'; sum2+=$'$2'*$'$2'} END {print sum1/sum0" "sqrt((sum2/sum0-(sum1/sum0)**2)/sum0)}' $1
