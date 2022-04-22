f = open("reverse.txt", "w")
inp = input()
words = inp.split()
for word in words:
    print(word[::-1], file=f)
f.close()


