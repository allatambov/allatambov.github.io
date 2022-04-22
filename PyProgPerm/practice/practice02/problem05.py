inp = input()
sample = [int(i) for i in inp.split()]
sample.sort()
n = len(sample)

if n % 2 != 0:
    med = sample[(n+1)//2-1]
else:
    med = (sample[n//2-1] + sample[n//2]) / 2
print(med)