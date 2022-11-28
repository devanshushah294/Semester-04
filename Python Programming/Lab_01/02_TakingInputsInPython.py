# Taking inputs in python
a = input("Enter some value:");
print(a);

# Type Casting
# Here in python we don't need to specify the datatype but sometimes it creates problem 
# if we give numbers in below given inputs:
b = input("Enter the number1: ");
c = input("Enter the number2: ");
print(b+c);
# output will be concatination of both b and c
# so to handle such problem we use type casting
d = int(input("Enter number1: "));
e = int(input("Enter number2: "));
print(d+e);
