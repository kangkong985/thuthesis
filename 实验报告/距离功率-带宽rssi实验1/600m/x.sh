#!/bin/bash
./myanalyze > 1-600m.txt
#awk '{print $1,$2,$3,$4,$5,$6,$14,$15}' 1.txt > 2.txt
sed 's/ \[ 3\] 0.0-.* sec / /g' 1-600m.txt > 2-600m.txt
for i in $(seq 1700 -100 400);do
cat x2-$i >> 3-600m.txt
paste -d" " 2-600m.txt 3-600m.txt > 4-600m.txt
done
