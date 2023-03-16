class Skoda:
    def __init__(self):
        print("You can take skoda")

    def showSpeed(self):
        print("Maximum speed is 200")

    def fuel(self):
        print("deisel")


class Honda:
    def __init__(self):
        print("You can take honda")

    def showSpeed(self):
        print("Maximum speed is 100")

    def fuel(self):
        print("patrol")


a = int(input("Enter the budget : "))
if (a > 1000000):
    obj = Skoda()
else:
    obj = Honda()
obj.fuel()
obj.showSpeed()
