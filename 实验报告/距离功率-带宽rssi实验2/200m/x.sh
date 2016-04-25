#!/bin/bash
./myanalyze > 1-200m.txt
#awk '{print $1,$2,$3,$4,$5,$6,$14,$15}' 1.txt > 2.txt
sed 's/ \[ 3\] 0.0-.* MBytes / /g' 1-200m.txt > 2-200m.txt
for i in $(seq 2700 -500 700);do
cat rssi2-$i.txt >> 3-200m.txt
done
paste -d" " 2-200m.txt 3-200m.txt > 4-200m.txt
