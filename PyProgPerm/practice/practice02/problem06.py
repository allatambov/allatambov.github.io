# a - easy

x = float(input())
if x > 0:
    print("Молодец!")
else:
    print("Не молодец")

# b - hard
x = input()
if x == "0":
    print("Не молодец!")
elif x.startswith("-") == False:
    if x.isdigit():
        print("Молодец!")
    elif x.count(".") == 1:
        if x.replace(".", "").isdigit():
            print("Молодец!")
        else:
            print("Не число!")
    else:
        print("Не число!")
    elif x[1:].isdigit():
            print("Не молодец!")
        elif x.count(".") == 1:
            if x[1:].replace(".", "").isdigit():
                print("Не молодец!")
            else:
                print("Не число!")
        else:
            print("Не число!")


