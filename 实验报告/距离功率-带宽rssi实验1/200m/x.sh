#!/bin/bash
./myanalyze > 1.txt
#awk '{print $1,$2,$3,$4,$5,$6,$14,$15}' 1.txt > 2.txt
sed 's/ \[ 3\] 0.0-.* sec / /g' 1.txt > 2.txt
for i in $(seq 1700 -100 300);do
cat x2-$i >> 3.txt
paste -d" " 2.txt 3.txt > 4.txt
done
