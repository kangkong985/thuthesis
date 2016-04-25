for i in $(seq 1 15 211)
do
    j=$i+14
    echo "sed -n '$i,$((j))p' 4-1000m.txt >"
done > x1

for k in $(seq 1700 -100 300);do
    echo "p2_1000m_$((k)).txt"
done > x2

paste -d" " x1 x2 > x3
