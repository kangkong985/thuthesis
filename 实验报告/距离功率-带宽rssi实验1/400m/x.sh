#!/bin/bash
./myanalyze > 1-400m.txt
#awk '{print $1,$2,$3,$4,$5,$6,$14,$15}' 1.txt > 2.txt
sed 's/ \[ 3\] 0.0-.* sec / /g' 1-400m.txt > 2-400m.txt
for i in $(seq 1700 -100 300);do
cat x2-$i >> 3-400m.txt
paste -d" " 2-400m.txt 3-400m.txt > 4-400m.txt
done
