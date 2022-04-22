import timeit
import numpy as np
s = range(0, 2000)

start = timeit.default_timer()
squares = []
for i in s:
    squares.append(i**2)
stop = timeit.default_timer()
execution_time = stop - start
print(str(execution_time) + " seconds")

start = timeit.default_timer()
squares = [i**2 for i in s]
stop = timeit.default_timer()
execution_time = stop - start
print(str(execution_time) + " seconds")

start = timeit.default_timer()
squares = np.array(s) ** 2
stop = timeit.default_timer()
execution_time = stop - start
print(str(execution_time) + " seconds")