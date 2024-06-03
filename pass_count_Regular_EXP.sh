#!/bin/bash

read -sp "Enter Pass: " PASS
echo ""
LEN=${#PASS}
CAP_COUNTER=0
SAM_COUNTER=0
NUM_COUNTER=0
SPC_COUNTER=0

for (( i=0; i<LEN; i++ )); do
    c=${PASS:i:1}
    if [[ $c =~ [A-Z] ]]; then
        ((CAP_COUNTER++))
    elif [[ $c =~ [a-z] ]]; then
        ((SAM_COUNTER++))
    elif [[ $c =~ [0-9] ]]; then
        ((NUM_COUNTER++))
    else
        ((SPC_COUNTER++))
    fi
done

echo "A-Z count: $CAP_COUNTER"
echo "a-z count: $SAM_COUNTER"
echo "0-9 count: $NUM_COUNTER"
echo "SPC count: $SPC_COUNTER"

