favorites = [3, 7, 11, 23, 18, 48, 81]
n = int(input())

# with operator in
if n in favorites:
    print("Мое любимое число!")
else:
    print("Эх, ну почему?")

# by hand
check = False
for i in favorites:
    if i == n:
        print("Мое любимое число!")
        check = True
        break
if check == False:
    print("Эх, ну почему?")
