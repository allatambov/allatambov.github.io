with open("DV.txt") as f:
    lines = f.readlines()
lines_clean = [line.strip() for line in lines]

X = []
for i in lines_clean[0].split():
    X.append(float(i))

# the same, but shorter and quicker – list comprehensions
P = [float(j) for j in lines_clean[1].split()]

ex = 0
ex2 = 0
for i in range(0, len(X)):
    ex += X[i] * P[i]
    ex2 += X[i] ** 2 * P[i]
    
dx = ex2 - ex ** 2
res = "E(X) = %.2f; D(X) = %.2f" % (ex, dx)

ans = open("DV-answer.txt", "w")
print(res, file=ans)
ans.close()
