from math import e

LAMBDA = 5
k = int(input())
f = 1
for i in range(1, k+1):
    f *= i
res = e ** (-LAMBDA) * LAMBDA ** k / f
print("Число сообщений от Анаконды за неделю равно %i, вероятность равна %.3f." % (k, res))
