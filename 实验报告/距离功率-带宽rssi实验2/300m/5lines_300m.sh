#!/bin/bash
sed -n '1,25p' 4-300m.txt > p2_300m_2700.txt
sed -n '26,50p' 4-300m.txt > p2_300m_2200.txt
sed -n '51,75p' 4-300m.txt > p2_300m_1700.txt
sed -n '76,100p' 4-300m.txt > p2_300m_1200.txt
sed -n '101,125p' 4-300m.txt > p2_300m_700.txt
