import numpy as np
import pylab as pl

x = [i for i in range(5,18)]
y1 = [28.5,29,27,28.2,28,27,29.5,30,30,28.3,29.8,28.3,30]
y2 = [37.5,37.6,37.8,38.1,38,37.6,38,38,37.8,39,38.9,37,38.6]
y3 = [34,44.5,40.3,43,45,46.8,47,46.5,46.5,46.8,47,45.4,46.8]
y4 = [38,42,41.7,43.8,44,46.5,46.2,46.3,44.9,45.3,47,44,46.9]

print len(x)
print len(y1)
print len(y2)
print len(y3)
print len(y4)

pl.plot(x, y1, marker='*', markersize=12, markerfacecolor="None", label='30Mbps')
pl.plot(x, y2, color='r', marker='p', markersize=12, markerfacecolor="None",label='40Mbps')
pl.plot(x, y3, color='g', marker='o', markersize=12, markerfacecolor="None",label='50Mbps')
pl.plot(x, y4, color='c', marker='+', markersize=12, markerfacecolor="None",label='60Mbps')
pl.ylabel('Real Bandwidth(Mbps)', fontsize=20)
pl.xlabel('Input Txpower(dB)', fontsize=20)
# pl.legend(bbox_to_anchor=(1,1))
pl.legend(loc=2)
pl.show()

