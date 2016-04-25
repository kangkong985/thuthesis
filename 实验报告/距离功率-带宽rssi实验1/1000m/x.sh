#!/bin/bash
d=1000
./myanalyze > 1-${d}m.txt
#awk '{print $1,$2,$3,$4,$5,$6,$14,$15}' 1.txt > 2.txt
sed 's/ \[ 3\] 0.0-.* MBytes / /g' 1-${d}m.txt > 2-${d}m.txt
for i in $(seq 1700 -100 300);do
cat x2-${i} >> 3-${d}m.txt
paste -d" " 2-${d}m.txt 3-${d}m.txt > 4-${d}m.txt
done
