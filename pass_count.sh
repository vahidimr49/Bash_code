#!/usr/bin/bash

read -p "Enter Pass: " PASS
echo ""
#LEN=${#PASS}
CAP_COUNTER=0
SAM_COUNTER=0
NUM_COUNTER=0
SPC_COUNTER=0

for v  in $(seq 0 $((LEN - 1 ))); do

	c=${PASS:v:1}
	d=$(printf "%d" "'$c'")
	if [[ $d -ge 65 && $d -le 90 ]]; then
		let CAP_COUNTER++
	elif [[ $d -ge 97 && $d -le 122 ]]; then
		let SAM_COUNTER++
	elif [[ $d -ge 48 && $d -le 57 ]]; then
		let NUM_COUNTER++
	else
		let SPC_COUNTER++
	fi

done

echo "A-Z count: $CAP_COUNTER"
echo "a-z count: $SAM_COUNTER"
echo "0-9 count: $NUM_COUNTER"
echo "SPC count: $SPC_COUNTER"

