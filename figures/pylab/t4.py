import numpy as np
import pylab as pl

x = [i for i in range(1,10)]
y1 = [28,31,34,39.2,40.2,43,45.3,51,54]
y2 = [0.79,0.83,0.847,0.88,0.89,0.9,0.91,0.935,0.95]

print len(x)
print len(y1)
print len(y2)

pl.plot(x, y1, marker='D', markersize=12, markerfacecolor="None", label='foreman')
# pl.plot(x, y2, color='r', marker='p', markersize=12, markerfacecolor="None",label='40Mbps')
# pl.plot(x, y3, color='g', marker='o', markersize=12, markerfacecolor="None",label='50Mbps')
# pl.plot(x, y4, color='c', marker='+', markersize=12, markerfacecolor="None",label='60Mbps')
pl.ylabel('Average PSNR(dB)', fontsize=20)
pl.xlabel('Index of Lost P-frame', fontsize=20)
# pl.legend(bbox_to_anchor=(1,1))
pl.legend(loc=4)
pl.show()

