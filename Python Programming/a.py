class Devanshu:
    '''HEllo World'''

    def __init__(self):
        self.name = "Devanshu"
        print("Devanshu Shah")

    @classmethod
    def printName(self):
        print("Devanshu")


obj = Devanshu()
print(obj.__doc__)
print(obj.__dict__)
print(obj.__module__)
Devanshu.printName()
