#!/bin/bash
./myanalyze > 1-800m.txt
#awk '{print $1,$2,$3,$4,$5,$6,$14,$15}' 1.txt > 2.txt
sed 's/ \[ 3\] 0.0-.* MBytes / /g' 1-800m.txt > 2-800m.txt
for i in $(seq 1700 -100 600);do
cat x2-$i >> 3-800m.txt
paste -d" " 2-800m.txt 3-800m.txt > 4-800m.txt
done
