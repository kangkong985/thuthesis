for i in $(seq 1 15 211)
do
    j=$i+14
    echo "sed -n '$i,$((j))p' 4-400m.txt >"
done > x1
