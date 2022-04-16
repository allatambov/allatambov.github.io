line = ["Третьяковская", "Марксистская", "Площадь Ильича", "Авиамоторная",
         "Шоссе Энтузиастов", "Перово", "Новогиреево", "Новокосино"]

station = input("Enter current station: ")
i = line.index(station)
print("Следующая станция: " + line[i + 1] + ".")

# alternatives (uncomment):
# print(f"Следующая станция: {line[i + 1]}.")
# print("Следующая станция: ", line[i + 1], ".", sep = "")
# print("Следующая станция: ", line[i + 1], ".", sep = "")
