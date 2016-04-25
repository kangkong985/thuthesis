#!/bin/bash
./myanalyze2
#awk '{print $1,$2,$3,$4,$5,$6,$14,$15}' 1.txt > 2.txt
for j in $(seq 300 100 1700);do
	sed 's/ \[ 3\] 0.0-.* sec / /g' p2_${j}.txt > p2_${j}_2.txt
#	for i in $(seq 1700 -100 300);do
#	cat x2-$i >> 3-1.txt
	paste -d" " p2_${j}_2.txt x2-${j} > p2_${j}_3.txt
#	done
done
