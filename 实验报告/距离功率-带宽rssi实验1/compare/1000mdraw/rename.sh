#!/bin/bash
d=1000m
for file in *400m
do
    echo $file|rename "s/400m/${d}/g"
done

sed -i 's/400m/${d}/g' *${d}
