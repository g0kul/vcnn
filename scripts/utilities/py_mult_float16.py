#Float 16bit Multiplication Validation Script
import numpy as np
# a = np.array([-12817,17476,0], dtype=np.int16)
# a = np.array([4369,4396,0], dtype=np.int16)
a = np.array([17767,8738,0,0], dtype=np.int16)
a.dtype = np.float16
a[3]=(a[0]*a[1])+a[2]
a.dtype=np.int16
#list = [hex(i) for i in a]
#print(list)
print(a)