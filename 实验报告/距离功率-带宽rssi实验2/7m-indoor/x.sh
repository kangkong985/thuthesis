#!/bin/bash
./myanalyze > 1-7m.txt
#awk '{print $1,$2,$3,$4,$5,$6,$14,$15}' 1.txt > 2.txt
sed 's/ \[ 3\] 0.0-.* MBytes / /g' 1-7m.txt > 2-7m.txt
for i in $(seq 2700 -500 700);do
cat rssi2-$i.txt >> 3-7m.txt
done
paste -d" " 2-7m.txt 3-7m.txt > 4-7m.txt
