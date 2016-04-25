for i in $(seq 1 12 133)
do
    j=$i+11
    echo "sed -n '$i,$((j))p' 4-800m.txt >"
done > x1

for k in $(seq 1700 -100 600);do
    echo "p2_800m_$((k)).txt"
done > x2

paste -d" " x1 x2 > x3
