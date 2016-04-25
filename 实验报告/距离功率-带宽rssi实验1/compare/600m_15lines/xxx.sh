for i in $(seq 1 14 183)
do
    j=$i+13
    echo "sed -n '$i,$((j))p' 4-600m.txt >"
done > x1

for k in $(seq 1700 -100 400);do
    echo "p2_600m_$((k)).txt"
done > x2

paste -d" " x1 x2 > x3
