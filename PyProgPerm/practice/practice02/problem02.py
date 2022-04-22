height = [158, 160, 175, 172, 190, 188, 173, 177, 165, 148, 156, 180]

# a. Создайте новый список height_m, содержащий рост в метрах.
# b. Сохраните в список L1 только те элементы height, которые меньше 170 см.
# c. Сохраните в список L2 только те элементы height, которые не менее 160 и не более 180.
# d. Сохраните в список L3 только чётные элементы height.

height_m = []
for h in height:
    height_m.append(h/100)
print(height_m)

height_m = [h/100 for h in height]

L1 = []
for h in height:
    if h < 170:
        L1.append(h)
print(L1)

L2 = []
for h in height:
    if h >= 160 and h <= 180:
        L2.append(h)
print(L2)

L3 = []
for h in height:
    if h % 2 == 0:
        L3.append(h)
print(L3)

