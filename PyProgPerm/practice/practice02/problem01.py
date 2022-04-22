import numpy as np
Height = np.array([158, 160, 175, 172, 190, 188,
                   173, 177, 165, 148, 156, 180])

# a. Создайте новый массив Height_m, содержащий рост в метрах.
# b. Сохраните в массив A1 только те элементы Height, которые меньше 170 см.
# c. Сохраните в массив A2 только те элементы Height, которые не менее 160 и не более 180.
# d. Сохраните в массив A3 только чётные элементы Height.
# e. Сохраните в массив A4 только те элементы Height, которые или менее 160 или более 180.

height_m = Height / 100
print(height_m)

A1 = Height[Height < 170]
print(A1)

A2 = Height[(Height >= 160) & (Height <= 180)]
print(A2)

A3 = Height[Height % 2 == 0]
print(A3)

A4 = Height[(Height < 160) | (Height > 180)]  # or
A4 = Height[(Height < 160) ^ (Height > 180)]  # xor
print(A4)

