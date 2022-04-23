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
else:
    if x.startswith("-") == False:
        if x.coun-t(".") == 1:
            if x.replace(".", "").isdigit():
                print("Молодец!")
            else:
                print("Это не число!")
        elif x.isdigit():
            print("Молодец!")
        else:
            print("Это не число!")
    else:
        if x.count(".") == 1:
            if x[1:].replace(".", "").isdigit():
                print("Не молодец!")
            else:
                print("Это не число!")
        elif x[1:].isdigit():
            print("Не молодец!")
        else:
            print("Это не число!")
            
